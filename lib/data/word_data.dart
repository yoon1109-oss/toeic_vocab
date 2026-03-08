import '../models/word.dart';
import 'word_data_level1_a.dart';
import 'word_data_level1_b.dart';
import 'word_data_level2_a.dart';
import 'word_data_level2_b.dart';
import 'word_data_level3_a.dart';
import 'word_data_level3_b.dart';

class WordData {
  static final Map<int, List<Word>> words = {
    1: [...WordDataLevel1A.words, ...WordDataLevel1B.words],
    2: [...WordDataLevel2A.words, ...WordDataLevel2B.words],
    3: [...WordDataLevel3A.words, ...WordDataLevel3B.words],
  };
}
