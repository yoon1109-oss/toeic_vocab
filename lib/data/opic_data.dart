import '../models/word.dart';
import 'opic_data_beginner_a.dart';
import 'opic_data_beginner_b.dart';
import 'opic_data_intermediate_a.dart';
import 'opic_data_intermediate_b.dart';
import 'opic_data_advanced_a.dart';
import 'opic_data_advanced_b.dart';

class OPIcData {
  static final Map<int, List<Word>> words = {
    1: [...OPIcBeginnerA.words, ...OPIcBeginnerB.words],
    2: [...OPIcIntermediateA.words, ...OPIcIntermediateB.words],
    3: [...OPIcAdvancedA.words, ...OPIcAdvancedB.words],
  };
}
