import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../models/word.dart';
import '../data/word_data.dart';

class WordViewModel extends ChangeNotifier {
  int _currentLevel = 1;
  int _currentSetIndex = 0;
  int _currentWordIndex = 0;
  bool _showCompletion = false;
  List<Word> _shuffledWords = [];

  final FlutterTts _tts = FlutterTts();
  static const int wordsPerSet = 10;

  WordViewModel() {
    _initTts();
    _shuffleLevel();
  }

  Future<void> _initTts() async {
    await _tts.setLanguage('en-US');

    // Try to select a natural-sounding English voice on Android.
    if (!kIsWeb) {
      try {
        final voices = await _tts.getVoices;
        if (voices != null) {
          final voiceList = List<Map<Object?, Object?>>.from(voices);

          // Prefer en-US voices; filter by locale.
          final enVoices = voiceList.where((v) {
            final locale = (v['locale'] ?? '').toString().toLowerCase();
            return locale.startsWith('en-us') || locale.startsWith('en_us');
          }).toList();

          // Among en-US voices, prefer high-quality / non-network voices
          // that are typically installed by Google TTS.
          Map<Object?, Object?>? bestVoice;
          for (final v in enVoices) {
            final name = (v['name'] ?? '').toString().toLowerCase();
            // Google's high-quality voices contain these keywords.
            if (name.contains('en-us-x-') ||
                name.contains('en-us-language') ||
                name.contains('english') ||
                name.contains('google')) {
              bestVoice = v;
              break;
            }
          }
          // Fall back to any en-US voice if no preferred one found.
          bestVoice ??= enVoices.isNotEmpty ? enVoices.first : null;

          if (bestVoice != null) {
            await _tts.setVoice({
              'name': bestVoice['name'].toString(),
              'locale': bestVoice['locale'].toString(),
            });
          }
        }
      } catch (_) {
        // Voice selection failed; fall back to default engine voice.
      }
    }

    // Web Speech API: 1.0 = normal speed. Native: 0.5 = normal.
    final rate = kIsWeb ? 0.9 : 0.5;
    await _tts.setSpeechRate(rate);
    await _tts.setPitch(1.0);
    await _tts.setVolume(1.0);
  }

  int get currentLevel => _currentLevel;
  int get currentSetIndex => _currentSetIndex;
  int get currentWordIndex => _currentWordIndex;
  bool get showCompletion => _showCompletion;

  List<Word> get currentLevelWords => _shuffledWords;

  void _shuffleLevel() {
    _shuffledWords = List<Word>.from(WordData.words[_currentLevel] ?? [])
      ..shuffle();
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

  void selectLevel(int level) {
    _currentLevel = level;
    _currentSetIndex = 0;
    _currentWordIndex = 0;
    _showCompletion = false;
    _shuffleLevel();
    notifyListeners();
  }

  void nextWord() {
    if (_currentWordIndex < currentSet.length - 1) {
      _currentWordIndex++;
    } else {
      _showCompletion = true;
    }
    notifyListeners();
  }

  void previousWord() {
    if (_currentWordIndex > 0) {
      _currentWordIndex--;
      notifyListeners();
    }
  }

  void reviewCurrentSet() {
    _currentWordIndex = 0;
    _showCompletion = false;
    notifyListeners();
  }

  void goToNextSet() {
    if (_currentSetIndex < totalSets - 1) {
      _currentSetIndex++;
    } else {
      _currentSetIndex = 0;
    }
    _currentWordIndex = 0;
    _showCompletion = false;
    notifyListeners();
  }

  Future<void> speak(String text) async {
    await _tts.stop();
    await _tts.speak(text);
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }
}
