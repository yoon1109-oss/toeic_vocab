import 'package:flutter_test/flutter_test.dart';
import 'package:toeic_vocab/services/examples_repository.dart';
import 'package:toeic_vocab/viewmodels/word_viewmodel.dart';
import 'package:toeic_vocab/data/toeic_examples_level1_a.dart';
import 'package:toeic_vocab/data/toeic_examples_level1_b.dart';

void main() {
  const repo = ExamplesRepository();

  test('알려진 TOEIC L1 단어의 예문을 반환한다', () {
    final key = ToeicExamplesLevel1A.data.keys.first;
    final result =
        repo.examplesFor(mode: VocabMode.toeic, level: 1, english: key);
    expect(result, isNotEmpty);
    expect(result, ToeicExamplesLevel1A.data[key]);
  });

  test('A 맵에 없으면 B 맵을 폴백으로 검색한다', () {
    final bOnly = ToeicExamplesLevel1B.data.keys.firstWhere(
      (k) => !ToeicExamplesLevel1A.data.containsKey(k),
      orElse: () => '',
    );
    // B 전용 키가 존재할 때만 검증 (없으면 스킵)
    if (bOnly.isNotEmpty) {
      final result =
          repo.examplesFor(mode: VocabMode.toeic, level: 1, english: bOnly);
      expect(result, ToeicExamplesLevel1B.data[bOnly]);
    }
  });

  test('없는 단어는 빈 리스트를 반환한다', () {
    final result = repo.examplesFor(
        mode: VocabMode.toeic, level: 1, english: '___nonexistent___');
    expect(result, isEmpty);
  });

  test('즐겨찾기 검색은 모든 맵을 순회한다', () {
    final key = ToeicExamplesLevel1A.data.keys.first;
    expect(repo.favoriteExamplesFor(key), isNotEmpty);
  });

  test('OPIc 실전 문장 모드는 단어 예문이 없다', () {
    final result = repo.examplesFor(
        mode: VocabMode.opicPhrase, level: 1, english: 'anything');
    expect(result, isEmpty);
  });
}
