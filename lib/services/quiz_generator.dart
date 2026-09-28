import 'dart:math';

import '../models/quiz_question.dart';
import '../models/word.dart';

/// 기존 단어 데이터만으로 4지선다 문항을 만든다. 신규 콘텐츠 데이터는 쓰지 않는다.
class QuizGenerator {
  const QuizGenerator();

  static const int optionCount = 4;

  /// [targets]의 각 단어를 정답으로 하는 문항 목록.
  ///
  /// 오답은 [pool]의 다른 단어 뜻에서 뽑는다. 서로 다른 오답 3개를 채우지
  /// 못한 문항은 건너뛴다(문항이 성립하지 않으므로). 호출측은 반환 길이가
  /// 0이면 퀴즈를 띄우지 않아야 한다.
  List<QuizQuestion> generate({
    required List<Word> targets,
    required List<Word> pool,
    Random? random,
  }) {
    final rnd = random ?? Random();
    final questions = <QuizQuestion>[];

    for (final target in targets) {
      final distractors = _pickDistractors(target, pool, rnd);
      if (distractors.length < optionCount - 1) continue;

      final options = <String>[target.meaning, ...distractors]..shuffle(rnd);
      questions.add(
        QuizQuestion(
          word: target,
          options: options,
          answerIndex: options.indexOf(target.meaning),
        ),
      );
    }

    return questions;
  }

  List<String> _pickDistractors(Word target, List<Word> pool, Random rnd) {
    // 대표 의미가 겹치면 정답이 둘이 되므로 배제한다.
    // '할당하다'와 '할당하다, 배정하다'가 동시에 나오는 경우를 막는다.
    final usedSenses = <String>{_primarySense(target.meaning)};
    final candidates = <String>[];

    for (final word in pool) {
      if (word.english == target.english) continue;
      if (usedSenses.add(_primarySense(word.meaning))) {
        candidates.add(word.meaning);
      }
    }

    candidates.shuffle(rnd);
    return candidates.take(optionCount - 1).toList();
  }

  /// '적응; 개작' → '적응' — 복수 의미 중 첫 번째만 비교 대상으로 삼는다.
  String _primarySense(String meaning) {
    final match = RegExp(r'[,;]').firstMatch(meaning);
    final head = match == null ? meaning : meaning.substring(0, match.start);
    return head.trim();
  }
}
