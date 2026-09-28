import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toeic_vocab/models/word.dart';
import 'package:toeic_vocab/services/favorite_service.dart';
import 'package:toeic_vocab/services/quiz_generator.dart';

Word _word(String english, String meaning) =>
    Word(english: english, phonetic: '', meaning: meaning);

void main() {
  const generator = QuizGenerator();

  group('QuizGenerator', () {
    final pool = [
      _word('allocate', '할당하다'),
      _word('ambiguous', '모호한'),
      _word('amplify', '증폭시키다'),
      _word('analogy', '비유, 유추'),
      _word('anecdote', '일화, 에피소드'),
      _word('anticipate', '예상하다'),
    ];

    test('문항마다 선택지 4개를 만들고 정답을 포함한다', () {
      final questions = generator.generate(
        targets: [pool[0], pool[1]],
        pool: pool,
        random: Random(1),
      );

      expect(questions.length, 2);
      for (final q in questions) {
        expect(q.options.length, 4);
        expect(q.options, contains(q.word.meaning));
        expect(q.answer, q.word.meaning);
      }
    });

    test('선택지는 서로 중복되지 않는다', () {
      final questions = generator.generate(
        targets: pool,
        pool: pool,
        random: Random(7),
      );

      for (final q in questions) {
        expect(q.options.toSet().length, 4);
      }
    });

    test('대표 의미가 정답과 겹치는 단어는 오답에서 배제한다', () {
      final target = _word('allocate', '할당하다');
      final questions = generator.generate(
        targets: [target],
        pool: [
          target,
          _word('assign', '할당하다, 배정하다'), // 대표 의미 중복 → 배제 대상
          _word('ambiguous', '모호한'),
          _word('amplify', '증폭시키다'),
          _word('analogy', '비유, 유추'),
        ],
        random: Random(3),
      );

      expect(questions.length, 1);
      expect(questions.first.options, isNot(contains('할당하다, 배정하다')));
    });

    test('오답 후보가 3개 미만이면 문항을 만들지 않는다', () {
      final target = _word('allocate', '할당하다');
      final questions = generator.generate(
        targets: [target],
        pool: [target, _word('ambiguous', '모호한'), _word('amplify', '증폭시키다')],
        random: Random(5),
      );

      expect(questions, isEmpty);
    });

    test('풀이 비어 있으면 빈 리스트를 반환한다', () {
      final questions = generator.generate(
        targets: [_word('allocate', '할당하다')],
        pool: const [],
      );

      expect(questions, isEmpty);
    });
  });

  group('FavoriteService.add', () {
    setUp(() => SharedPreferences.setMockInitialValues({}));

    test('별표를 추가하고, 이미 있는 단어를 해제하지 않는다', () async {
      final service = FavoriteService();
      await service.init();

      service.add('allocate');
      expect(service.isFavorite('allocate'), isTrue);

      // 퀴즈에서 같은 단어를 또 틀려도 해제되지 않아야 한다.
      service.add('allocate');
      expect(service.isFavorite('allocate'), isTrue);
    });

    test('toggle과 달리 add는 기존 별표를 유지한다', () async {
      final service = FavoriteService();
      await service.init();

      service.toggle('ambiguous'); // 사용자가 직접 별표
      expect(service.isFavorite('ambiguous'), isTrue);

      service.add('ambiguous'); // 퀴즈 오답으로 재등록
      expect(service.isFavorite('ambiguous'), isTrue);
    });
  });
}
