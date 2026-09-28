import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
}
