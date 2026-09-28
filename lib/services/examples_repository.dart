import '../data/opic_examples_advanced_a.dart';
import '../data/opic_examples_advanced_b.dart';
import '../data/opic_examples_beginner_a.dart';
import '../data/opic_examples_beginner_b.dart';
import '../data/opic_examples_intermediate_a.dart';
import '../data/opic_examples_intermediate_b.dart';
import '../data/toeic_examples_level1_a.dart';
import '../data/toeic_examples_level1_b.dart';
import '../data/toeic_examples_level2_a.dart';
import '../data/toeic_examples_level2_b.dart';
import '../data/toeic_examples_level3_a.dart';
import '../data/toeic_examples_level3_b.dart';
import '../models/word_example.dart';
import '../viewmodels/word_viewmodel.dart';

/// 모드·레벨별로 흩어진 예문 데이터 맵을 단일 진입점으로 조회한다.
///
/// 기존 home_screen의 12중 `??` 체이닝을 대체한다. 각 (모드, 레벨)은
/// A/B 두 개의 맵으로 나뉘어 있으며, 앞선 맵에서 먼저 찾는 순서를 유지한다.
class ExamplesRepository {
  const ExamplesRepository();

  // (모드, 레벨) → 검색할 A/B 맵 목록. 리스트 순서 = 조회 우선순위.
  static const Map<VocabMode, Map<int, List<Map<String, List<WordExample>>>>>
      _byModeLevel = {
    VocabMode.toeic: {
      1: [ToeicExamplesLevel1A.data, ToeicExamplesLevel1B.data],
      2: [ToeicExamplesLevel2A.data, ToeicExamplesLevel2B.data],
      3: [ToeicExamplesLevel3A.data, ToeicExamplesLevel3B.data],
    },
    VocabMode.opic: {
      1: [OPIcBeginnerAExamples.data, OPIcBeginnerBExamples.data],
      2: [OPIcIntermediateAExamples.data, OPIcIntermediateBExamples.data],
      3: [OPIcAdvancedAExamples.data, OPIcAdvancedBExamples.data],
    },
  };

  // 즐겨찾기 모드: 전체 맵을 원래 순서대로 순회한다.
  static const List<Map<String, List<WordExample>>> _allMaps = [
    ToeicExamplesLevel1A.data,
    ToeicExamplesLevel1B.data,
    ToeicExamplesLevel2A.data,
    ToeicExamplesLevel2B.data,
    ToeicExamplesLevel3A.data,
    ToeicExamplesLevel3B.data,
    OPIcBeginnerAExamples.data,
    OPIcBeginnerBExamples.data,
    OPIcIntermediateAExamples.data,
    OPIcIntermediateBExamples.data,
    OPIcAdvancedAExamples.data,
    OPIcAdvancedBExamples.data,
  ];

  /// 특정 모드·레벨의 단어 예문. 없으면 빈 리스트.
  List<WordExample> examplesFor({
    required VocabMode mode,
    required int level,
    required String english,
  }) {
    final maps = _byModeLevel[mode]?[level];
    if (maps == null) return const [];
    return _lookup(maps, english);
  }

  /// 즐겨찾기 모드: 모든 모드·레벨에서 예문 검색.
  List<WordExample> favoriteExamplesFor(String english) =>
      _lookup(_allMaps, english);

  List<WordExample> _lookup(
    List<Map<String, List<WordExample>>> maps,
    String english,
  ) {
    for (final map in maps) {
      final found = map[english];
      if (found != null) return found;
    }
    return const [];
  }
}
