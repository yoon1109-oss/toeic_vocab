import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/word.dart';
import '../models/opic_phrase.dart';
import '../data/word_data.dart';
import '../data/opic_data.dart';
import '../data/opic_phrases_data.dart';
import '../services/favorite_service.dart';
import '../services/quiz_generator.dart';
import 'quiz_controller.dart';

enum VocabMode { toeic, opic, opicPhrase }

class WordViewModel extends ChangeNotifier {
  VocabMode _mode = VocabMode.toeic;
  int _currentLevel = 1;
  int _currentSetIndex = 0;
  int _currentWordIndex = 0;
  bool _showCompletion = false;
  bool _autoSpeak = false;
  List<Word> _shuffledWords = [];

  final FlutterTts _tts = FlutterTts();
  late final Future<void> _ttsReady;
  final FavoriteService _favoriteService = FavoriteService();
  final QuizGenerator _quizGenerator = const QuizGenerator();
  static const int wordsPerSet = 10;

  bool _quizModeEnabled = true;
  bool _showQuiz = false;
  QuizController? _quizController;

  // 셔플 시드: 진도 복원 시 동일한 카드 순서를 재현하기 위해 저장
  int _shuffleSeed = DateTime.now().microsecondsSinceEpoch & 0x7fffffff;

  bool _isFavoriteMode = false;
  List<Word> _favoriteWords = [];

  // OPIc 실전 문장 상태
  int _currentTopicIndex = 0;
  int _currentPhraseIndex = 0;
  int _currentPhraseLevel = 1;
  bool _showPhraseCompletion = false;

  // 즐겨찾기 모드 진입 전 상태 저장
  int _savedLevel = 1;
  int _savedSetIndex = 0;
  int _savedWordIndex = 0;
  VocabMode _savedMode = VocabMode.toeic;

  static const String _kMode = 'prog_mode';
  static const String _kLevel = 'prog_level';
  static const String _kSetIndex = 'prog_set_index';
  static const String _kWordIndex = 'prog_word_index';
  static const String _kSeed = 'prog_shuffle_seed';
  static const String _kTopicIndex = 'phrase_topic_index';
  static const String _kPhraseIndex = 'phrase_phrase_index';
  static const String _kPhraseLevel = 'phrase_level';
  static const String _kQuizMode = 'quiz_mode_enabled';

  // 레벨별 진도 키: 레벨을 바꿨다 돌아와도 보던 위치에서 이어서 학습한다.
  static String _levelKey(VocabMode mode, int level, String field) =>
      'prog_${mode.name}_${level}_$field';
  static String _lastLevelKey(VocabMode mode) => 'prog_${mode.name}_last_level';

  SharedPreferences? _prefs;

  WordViewModel() {
    _ttsReady = _initTts();
    _shuffleLevel();
    _initFavorites();
    _loadProgress();
  }

  Future<void> _saveProgress() async {
    if (_isFavoriteMode) return;
    // 현재 상태를 먼저 확정한다. await 이후에 읽으면 그 사이 바뀐 레벨·위치가
    // 섞여 저장될 수 있다.
    final values = <String, Object>{_kMode: _mode.name};
    if (_mode == VocabMode.opicPhrase) {
      values[_kTopicIndex] = _currentTopicIndex;
      values[_kPhraseIndex] = _currentPhraseIndex;
      values[_kPhraseLevel] = _currentPhraseLevel;
    } else {
      values[_kLevel] = _currentLevel;
      values[_kSetIndex] = _currentSetIndex;
      values[_kWordIndex] = _currentWordIndex;
      values[_kSeed] = _shuffleSeed;
      values[_lastLevelKey(_mode)] = _currentLevel;
      values[_levelKey(_mode, _currentLevel, 'set')] = _currentSetIndex;
      values[_levelKey(_mode, _currentLevel, 'word')] = _currentWordIndex;
      values[_levelKey(_mode, _currentLevel, 'seed')] = _shuffleSeed;
    }
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    // setX는 메모리 캐시를 즉시 갱신하므로, 바로 뒤의 레벨 전환에서도 최신 위치가 읽힌다.
    await Future.wait(values.entries.map((e) {
      final v = e.value;
      return v is int
          ? prefs.setInt(e.key, v)
          : prefs.setString(e.key, v as String);
    }));
  }

  /// 현재 모드·레벨의 저장된 위치와 셔플 순서를 복원한다. 없으면 처음부터.
  void _restoreLevelPosition() {
    final prefs = _prefs;
    final seed = prefs?.getInt(_levelKey(_mode, _currentLevel, 'seed'));
    if (seed == null) {
      _currentSetIndex = 0;
      _currentWordIndex = 0;
      _shuffleLevel();
      return;
    }
    _shuffleSeed = seed;
    _shuffleLevel(regenerateSeed: false);
    final setIndex = prefs!.getInt(_levelKey(_mode, _currentLevel, 'set')) ?? 0;
    _currentSetIndex = setIndex.clamp(0, max(totalSets - 1, 0));
    final wordIndex =
        prefs.getInt(_levelKey(_mode, _currentLevel, 'word')) ?? 0;
    _currentWordIndex = wordIndex.clamp(0, max(currentSet.length - 1, 0));
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    _prefs = prefs;
    // 퀴즈 모드 설정은 진도와 별개로 항상 복원한다 (기본값 켜짐).
    _quizModeEnabled = prefs.getBool(_kQuizMode) ?? true;
    final modeStr = prefs.getString(_kMode);
    if (modeStr == null) {
      notifyListeners();
      return; // 저장된 진도 없음 (첫 실행)
    }
    _mode = VocabMode.values.firstWhere(
      (e) => e.name == modeStr,
      orElse: () => VocabMode.toeic,
    );
    if (_mode == VocabMode.opicPhrase) {
      _currentTopicIndex = prefs.getInt(_kTopicIndex) ?? 0;
      _currentPhraseIndex = prefs.getInt(_kPhraseIndex) ?? 0;
      _currentPhraseLevel = prefs.getInt(_kPhraseLevel) ?? 1;
    } else {
      _currentLevel = prefs.getInt(_kLevel) ?? 1;
      _currentSetIndex = prefs.getInt(_kSetIndex) ?? 0;
      _currentWordIndex = prefs.getInt(_kWordIndex) ?? 0;
      _shuffleSeed = prefs.getInt(_kSeed) ?? _shuffleSeed;
      // 저장된 시드로 동일 순서 재현 → 복원된 인덱스가 정확히 일치
      _shuffleLevel(regenerateSeed: false);
      // 단어 데이터가 바뀌어 저장된 위치가 범위를 벗어나도 안전하게
      _currentSetIndex = _currentSetIndex.clamp(0, max(totalSets - 1, 0));
      _currentWordIndex =
          _currentWordIndex.clamp(0, max(currentSet.length - 1, 0));
    }
    notifyListeners();
  }

  Future<void> _initFavorites() async {
    await _favoriteService.init();
    notifyListeners();
  }

  Future<void> _initTts() async {
    try {
      if (!kIsWeb && defaultTargetPlatform == TargetPlatform.iOS) {
        // 무음 모드에서도 발음이 들리도록 playback 카테고리 사용
        await _tts.setSharedInstance(true);
        await _tts.setIosAudioCategory(
          IosTextToSpeechAudioCategory.playback,
          [
            IosTextToSpeechAudioCategoryOptions.mixWithOthers,
            IosTextToSpeechAudioCategoryOptions.defaultToSpeaker,
          ],
        );
      }
      await _tts.setLanguage('en-US');
      await _tts.setSpeechRate(kIsWeb ? 0.9 : 0.5);
      await _tts.setPitch(1.0);
      await _tts.setVolume(1.0);

      // Google TTS 엔진 우선 사용 (삼성 TTS는 영어 발음이 부정확)
      // Android 11+에서 엔진 목록을 받으려면 매니페스트의 TTS_SERVICE queries가 필요하다.
      if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
        final engines = await _tts.getEngines;
        if (engines != null) {
          final engineList =
              (engines as List).map((e) => e.toString()).toList();
          if (engineList.contains('com.google.android.tts')) {
            await _tts.setEngine('com.google.android.tts');
            await _tts.setLanguage('en-US'); // 엔진 변경 후 재설정
          }
        }
      }
    } catch (e) {
      debugPrint('TTS init error (non-fatal): $e');
    }
  }

  VocabMode get mode => _mode;
  bool get autoSpeak => _autoSpeak;
  int get currentLevel => _currentLevel;
  int get currentSetIndex => _currentSetIndex;
  int get currentWordIndex => _currentWordIndex;
  bool get showCompletion => _showCompletion;
  bool get isFavoriteMode => _isFavoriteMode;

  // ── 퀴즈 ──────────────────────────────────────────────────

  bool get quizModeEnabled => _quizModeEnabled;
  bool get showQuiz => _showQuiz;
  QuizController? get quizController => _quizController;

  /// 퀴즈가 적용되는 범위인지. TOEIC·OPIc 단어의 모든 레벨 (실전 문장·별표 제외).
  bool get isQuizScope => !_isFavoriteMode && _mode != VocabMode.opicPhrase;

  void toggleQuizMode() {
    _quizModeEnabled = !_quizModeEnabled;
    notifyListeners();
    _saveQuizMode();
  }

  Future<void> _saveQuizMode() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kQuizMode, _quizModeEnabled);
  }

  /// 문항 생성에 성공하면 퀴즈로 진입하고 true를 반환한다.
  bool _startQuiz() {
    final questions = _quizGenerator.generate(
      targets: currentSet,
      pool: _wordSource[_currentLevel] ?? const [],
    );
    if (questions.isEmpty) return false;

    _disposeQuiz();
    _quizController = QuizController(
      questions: questions,
      onWrongAnswer: (word) => _favoriteService.add(word.english),
    )..addListener(notifyListeners);
    _showQuiz = true;
    return true;
  }

  /// 퀴즈를 닫고 기존 세트 완료 화면으로 돌아간다.
  void exitQuiz() {
    _disposeQuiz();
    _showQuiz = false;
    _showCompletion = true;
    notifyListeners();
  }

  void _disposeQuiz() {
    _quizController?.removeListener(notifyListeners);
    _quizController?.dispose();
    _quizController = null;
  }

  /// 모드·레벨·세트가 바뀌면 진행 중인 퀴즈는 무효가 된다.
  void _resetQuiz() {
    _disposeQuiz();
    _showQuiz = false;
  }

  /// 결과 화면에서 '다음 세트로'.
  void finishQuizAndGoNext() {
    _disposeQuiz();
    _showQuiz = false;
    goToNextSet();
  }

  // ─────────────────────────────────────────────────────────

  Map<int, List<Word>> get _wordSource =>
      _mode == VocabMode.toeic ? WordData.words : OPIcData.words;

  List<Word> get currentLevelWords =>
      _isFavoriteMode ? _favoriteWords : _shuffledWords;

  void _shuffleLevel({bool regenerateSeed = true}) {
    if (_mode == VocabMode.opicPhrase) return;
    if (regenerateSeed) {
      _shuffleSeed = DateTime.now().microsecondsSinceEpoch & 0x7fffffff;
    }
    _shuffledWords = List<Word>.from(_wordSource[_currentLevel] ?? [])
      ..shuffle(Random(_shuffleSeed));
  }

  int get totalSets {
    final count = currentLevelWords.length;
    return count == 0 ? 0 : (count + wordsPerSet - 1) ~/ wordsPerSet;
  }

  List<Word> get currentSet {
    final start = _currentSetIndex * wordsPerSet;
    final end = (start + wordsPerSet).clamp(0, currentLevelWords.length);
    if (start >= currentLevelWords.length) return [];
    return currentLevelWords.sublist(start, end);
  }

  Word? get currentWord {
    if (_currentWordIndex >= currentSet.length) return null;
    return currentSet[_currentWordIndex];
  }

  int get currentSetNumber => _currentSetIndex + 1;
  int get currentWordNumberInSet => _currentWordIndex + 1;
  int get currentWordNumberTotal =>
      _currentSetIndex * wordsPerSet + _currentWordIndex + 1;
  int get totalWordsInLevel => currentLevelWords.length;
  bool get isFirstWord => _currentWordIndex == 0;
  bool get isLastWord => _currentWordIndex == currentSet.length - 1;

  // 모드 전환
  void setMode(VocabMode mode) {
    if (_mode == mode) return;
    if (_isFavoriteMode) exitFavoriteMode();
    _resetQuiz();
    _mode = mode;
    if (mode == VocabMode.opicPhrase) {
      _currentTopicIndex = 0;
      _currentPhraseIndex = 0;
      _currentPhraseLevel = 1;
      _showPhraseCompletion = false;
    } else {
      _currentLevel = _prefs?.getInt(_lastLevelKey(mode)) ?? 1;
      _showCompletion = false;
      _restoreLevelPosition();
    }
    notifyListeners();
    _saveProgress();
  }

  // 자동 발음
  void toggleAutoSpeak() {
    _autoSpeak = !_autoSpeak;
    notifyListeners();
    if (_autoSpeak && currentWord != null) {
      speak(currentWord!.english, phonetic: currentWord!.phonetic);
    }
  }

  void _autoSpeakIfEnabled() {
    if (_autoSpeak && currentWord != null && !_showCompletion && !_showQuiz) {
      speak(currentWord!.english, phonetic: currentWord!.phonetic);
    }
  }

  // 즐겨찾기 관련 메서드
  void toggleFavorite(String english) {
    _favoriteService.toggle(english);
    if (_isFavoriteMode) {
      _buildFavoriteWords();
      if (_currentWordIndex >= currentSet.length && currentSet.isNotEmpty) {
        _currentWordIndex = currentSet.length - 1;
      }
      if (currentLevelWords.isEmpty) {
        _showCompletion = false;
      }
    }
    notifyListeners();
  }

  bool isFavorite(String english) => _favoriteService.isFavorite(english);

  void enterFavoriteMode() {
    _resetQuiz();
    _savedLevel = _currentLevel;
    _savedSetIndex = _currentSetIndex;
    _savedWordIndex = _currentWordIndex;
    _savedMode = _mode;

    _isFavoriteMode = true;
    _currentSetIndex = 0;
    _currentWordIndex = 0;
    _showCompletion = false;
    // opicPhrase 모드에서는 단어 카드가 없으므로 toeic 모드로 임시 전환
    if (_mode == VocabMode.opicPhrase) {
      _mode = VocabMode.toeic;
    }
    _buildFavoriteWords();
    notifyListeners();
  }

  void exitFavoriteMode() {
    _resetQuiz();
    _isFavoriteMode = false;
    _mode = _savedMode;
    _currentLevel = _savedLevel;
    _currentSetIndex = _savedSetIndex;
    _currentWordIndex = _savedWordIndex;
    _showCompletion = false;
    // 즐겨찾기 진입 전과 동일한 순서 유지 → 저장된 위치가 그대로 유효
    _shuffleLevel(regenerateSeed: false);
    notifyListeners();
  }

  // ── OPIc 실전 문장 ────────────────────────────────────────

  int get currentTopicIndex => _currentTopicIndex;
  int get currentPhraseLevel => _currentPhraseLevel;
  bool get showPhraseCompletion => _showPhraseCompletion;

  List<OPIcPhrase> get _currentTopicPhrases {
    final levelData = OPIcPhrasesData.dataForLevel(_currentPhraseLevel);
    return levelData[OPIcPhrasesData.topics[_currentTopicIndex]] ?? [];
  }

  void selectPhraseLevel(int level) {
    if (_currentPhraseLevel == level) return;
    _currentPhraseLevel = level;
    _currentPhraseIndex = 0;
    _showPhraseCompletion = false;
    notifyListeners();
    _saveProgress();
  }

  OPIcPhrase? get currentPhrase {
    final phrases = _currentTopicPhrases;
    if (_currentPhraseIndex >= phrases.length) return null;
    return phrases[_currentPhraseIndex];
  }

  int get totalTopics => OPIcPhrasesData.topics.length;
  int get totalPhrasesInTopic => _currentTopicPhrases.length;
  int get currentPhraseNumber => _currentPhraseIndex + 1;
  bool get isFirstPhrase => _currentPhraseIndex == 0;

  void selectTopic(int index) {
    if (index == _currentTopicIndex && !_showPhraseCompletion) return;
    _currentTopicIndex = index;
    _currentPhraseIndex = 0;
    _showPhraseCompletion = false;
    notifyListeners();
    _saveProgress();
  }

  void nextPhrase() {
    final phrases = _currentTopicPhrases;
    if (_currentPhraseIndex < phrases.length - 1) {
      _currentPhraseIndex++;
    } else {
      _showPhraseCompletion = true;
    }
    notifyListeners();
    if (_autoSpeak && currentPhrase != null && !_showPhraseCompletion) {
      speak(currentPhrase!.english);
    }
    _saveProgress();
  }

  void previousPhrase() {
    if (_currentPhraseIndex > 0) {
      _currentPhraseIndex--;
      notifyListeners();
      if (_autoSpeak && currentPhrase != null) {
        speak(currentPhrase!.english);
      }
      _saveProgress();
    }
  }

  void reviewCurrentTopic() {
    _currentPhraseIndex = 0;
    _showPhraseCompletion = false;
    notifyListeners();
    _saveProgress();
  }

  void goToNextTopic() {
    if (_currentTopicIndex < totalTopics - 1) {
      _currentTopicIndex++;
    } else {
      _currentTopicIndex = 0;
    }
    _currentPhraseIndex = 0;
    _showPhraseCompletion = false;
    notifyListeners();
    _saveProgress();
  }

  // ─────────────────────────────────────────────────────────

  void _buildFavoriteWords() {
    final favorites = _favoriteService.getFavorites();
    _favoriteWords = [];
    final seenEnglish = <String>{};
    // 모든 소스(TOEIC + OPIc)에서 즐겨찾기 단어 수집 (중복 제거)
    for (final source in [WordData.words, OPIcData.words]) {
      for (final level in [1, 2, 3]) {
        final words = source[level] ?? [];
        for (final word in words) {
          if (favorites.contains(word.english) &&
              seenEnglish.add(word.english)) {
            _favoriteWords.add(word);
          }
        }
      }
    }
  }

  void selectLevel(int level) {
    if (_isFavoriteMode) return;
    _resetQuiz();
    _currentLevel = level;
    _showCompletion = false;
    _restoreLevelPosition();
    notifyListeners();
    _saveProgress();
  }

  void nextWord() {
    if (_currentWordIndex < currentSet.length - 1) {
      _currentWordIndex++;
    } else {
      // 퀴즈 범위이고 문항 생성에 성공하면 퀴즈, 아니면 기존 완료 화면.
      final enteredQuiz = _quizModeEnabled && isQuizScope && _startQuiz();
      if (!enteredQuiz) _showCompletion = true;
    }
    notifyListeners();
    _autoSpeakIfEnabled();
    _saveProgress();
  }

  void previousWord() {
    if (_currentWordIndex > 0) {
      _currentWordIndex--;
      notifyListeners();
      _autoSpeakIfEnabled();
      _saveProgress();
    }
  }

  void reviewCurrentSet() {
    _resetQuiz();
    _currentWordIndex = 0;
    _showCompletion = false;
    notifyListeners();
    _saveProgress();
  }

  void goToNextSet() {
    _resetQuiz();
    if (_currentSetIndex < totalSets - 1) {
      _currentSetIndex++;
    } else {
      // 레벨을 끝까지 학습하면 새 순서로 섞어 처음부터 다시 시작
      _currentSetIndex = 0;
      if (!_isFavoriteMode) _shuffleLevel();
    }
    _currentWordIndex = 0;
    _showCompletion = false;
    notifyListeners();
    _saveProgress();
  }

  Future<void> speak(String text, {String? phonetic}) async {
    // 기기 내장 TTS 사용 (초기화 시 Google TTS 엔진 우선 선택)
    // 초기화(엔진·언어 설정)가 끝나기 전에 재생하면 기본 엔진으로 읽히므로 기다린다.
    await _ttsReady;
    try {
      await _tts.stop();
      await _tts.speak(text);
    } catch (e) {
      debugPrint('Device TTS failed: $e');
    }
  }

  @override
  void dispose() {
    _disposeQuiz();
    _tts.stop().catchError((_) => null);
    super.dispose();
  }
}
