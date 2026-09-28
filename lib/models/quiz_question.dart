import 'word.dart';

/// 4지선다 퀴즈 한 문항. 세션 중에만 존재하며 영속화하지 않는다.
class QuizQuestion {
  final Word word;

  /// 뜻 4개 (정답 1 + 오답 3, 셔플된 상태)
  final List<String> options;

  /// [options] 내 정답 위치
  final int answerIndex;

  const QuizQuestion({
    required this.word,
    required this.options,
    required this.answerIndex,
  });

  String get answer => options[answerIndex];
}
