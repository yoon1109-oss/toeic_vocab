import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toeic_vocab/data/opic_data.dart';
import 'package:toeic_vocab/data/word_data.dart';
import 'package:toeic_vocab/viewmodels/word_viewmodel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  // 생성자의 비동기 초기화/저장이 끝나길 기다린다.
  Future<void> settle() => Future.delayed(const Duration(milliseconds: 80));

  test('단어를 10개 단위 세트로 분할한다', () async {
    final vm = WordViewModel();
    await settle();

    expect(vm.currentSet.length, lessThanOrEqualTo(WordViewModel.wordsPerSet));
    final expected = (vm.totalWordsInLevel + WordViewModel.wordsPerSet - 1) ~/
        WordViewModel.wordsPerSet;
    expect(vm.totalSets, expected);
  });

  test('nextWord는 세트 내 위치를 전진시킨다', () async {
    final vm = WordViewModel();
    await settle();

    expect(vm.currentWordNumberInSet, 1);
    vm.nextWord();
    expect(vm.currentWordNumberInSet, 2);
  });

  test('진도가 동일한 단어로 복원된다 (시드 재현)', () async {
    final vm1 = WordViewModel();
    await settle();
    vm1.selectLevel(2);
    vm1.nextWord();
    vm1.nextWord();

    final savedWord = vm1.currentWord!.english;
    final savedLevel = vm1.currentLevel;
    final savedSet = vm1.currentSetIndex;
    final savedIdx = vm1.currentWordIndex;
    await settle(); // 비동기 저장 완료 대기

    // 새 인스턴스가 저장된 진도를 로드
    final vm2 = WordViewModel();
    await settle();

    expect(vm2.currentLevel, savedLevel);
    expect(vm2.currentSetIndex, savedSet);
    expect(vm2.currentWordIndex, savedIdx);
    // 핵심: 셔플 시드가 복원되어 같은 순서 → 같은 단어를 가리킨다
    expect(vm2.currentWord!.english, savedWord);
  });

  test('TOEIC 레벨마다 중복 없는 500단어', () {
    final all = <String>[];
    for (final level in [1, 2, 3]) {
      final words = WordData.words[level]!;
      expect(words.length, 500, reason: 'level $level');
      all.addAll(words.map((w) => w.english.toLowerCase()));
    }
    expect(all.toSet().length, all.length);
  });

  test('레벨을 바꿨다 돌아오면 이전 위치에서 이어진다', () async {
    final vm = WordViewModel();
    await settle();
    vm.nextWord();
    vm.nextWord();
    final word = vm.currentWord!.english;

    vm.selectLevel(3);
    expect(vm.currentWordIndex, 0);

    vm.selectLevel(1);
    expect(vm.currentWordIndex, 2);
    expect(vm.currentWord!.english, word);
  });

  test('모드를 바꿨다 돌아오면 마지막 레벨과 위치가 복원된다', () async {
    final vm = WordViewModel();
    await settle();
    vm.selectLevel(2);
    vm.nextWord();
    final word = vm.currentWord!.english;
    await settle();

    vm.setMode(VocabMode.opic);
    expect(vm.currentLevel, 1);
    vm.setMode(VocabMode.toeic);
    expect(vm.currentLevel, 2);
    expect(vm.currentWord!.english, word);
  });

  test('퀴즈는 TOEIC·OPIc 모든 레벨에 적용된다', () async {
    final vm = WordViewModel();
    await settle();
    for (final mode in [VocabMode.toeic, VocabMode.opic]) {
      vm.setMode(mode);
      for (final level in [1, 2, 3]) {
        vm.selectLevel(level);
        expect(vm.isQuizScope, isTrue, reason: '$mode level $level');
      }
    }
    vm.setMode(VocabMode.opicPhrase);
    expect(vm.isQuizScope, isFalse);
  });

  test('TOEIC 세트를 마치면 퀴즈가 시작된다', () async {
    final vm = WordViewModel();
    await settle();
    for (var i = 0; i < WordViewModel.wordsPerSet; i++) {
      vm.nextWord();
    }
    expect(vm.showQuiz, isTrue);
    expect(vm.quizController!.total, WordViewModel.wordsPerSet);
  });

  test('OPIc 레벨마다 중복 없는 500단어', () {
    final all = <String>[];
    for (final level in [1, 2, 3]) {
      final words = OPIcData.words[level]!;
      expect(words.length, 500, reason: 'level $level');
      all.addAll(words.map((w) => w.english.toLowerCase()));
    }
    expect(all.toSet().length, all.length);
  });
}
