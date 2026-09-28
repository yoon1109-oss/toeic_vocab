import 'package:flutter/foundation.dart';

import '../models/quiz_question.dart';
import '../models/word.dart';

/// 퀴즈 한 회차의 진행 상태. WordViewModel이 이미 커서 별도로 분리한다.
class QuizController extends ChangeNotifier {
  QuizController({
    required List<QuizQuestion> questions,
    this.onWrongAnswer,
  }) : _questions = List.of(questions);

  /// 오답이 나온 순간 호출된다. 별표 자동 추가에 쓴다.
  final void Function(Word word)? onWrongAnswer;

  List<QuizQuestion> _questions;
  int _currentIndex = 0;
  int? _selectedIndex;
  int _correctCount = 0;
  bool _finished = false;

  /// 오답 문항 — 결과 화면의 '틀린 단어만 다시 풀기'에서 재사용한다.
  final List<QuizQuestion> _wrongQuestions = [];

  QuizQuestion get current => _questions[_currentIndex];
  int get currentNumber => _currentIndex + 1;
  int get total => _questions.length;
  int? get selectedIndex => _selectedIndex;
  bool get hasAnswered => _selectedIndex != null;
  bool get isLastQuestion => _currentIndex >= _questions.length - 1;
  bool get isFinished => _finished;
  int get score => _correctCount;
  List<Word> get wrongWords =>
      _wrongQuestions.map((q) => q.word).toList(growable: false);

  /// 직전 선택이 정답이었는지. 미선택 상태에서는 false.
  bool get lastAnswerCorrect =>
      _selectedIndex != null && _selectedIndex == current.answerIndex;

  void select(int index) {
    if (_selectedIndex != null) return; // 채점 후 재선택 방지
    _selectedIndex = index;
    if (index == current.answerIndex) {
      _correctCount++;
    } else {
      _wrongQuestions.add(current);
      onWrongAnswer?.call(current.word);
    }
    notifyListeners();
  }

  void next() {
    if (_selectedIndex == null) return; // 선택 전에는 넘어갈 수 없다
    if (isLastQuestion) {
      _finished = true;
    } else {
      _currentIndex++;
      _selectedIndex = null;
    }
    notifyListeners();
  }

  /// 오답 문항만으로 재시작. 오답이 없으면 false를 반환하고 상태를 바꾸지 않는다.
  bool retryWrongOnly() {
    if (_wrongQuestions.isEmpty) return false;
    _questions = List.of(_wrongQuestions);
    _wrongQuestions.clear();
    _currentIndex = 0;
    _selectedIndex = null;
    _correctCount = 0;
    _finished = false;
    notifyListeners();
    return true;
  }
}
