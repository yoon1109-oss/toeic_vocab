import 'package:shared_preferences/shared_preferences.dart';

class FavoriteService {
  static const String _key = 'favorite_words';
  SharedPreferences? _prefs;
  final Set<String> _favorites = {};

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _prefs = prefs;
    // 로딩 중에 누른 별표도 잃지 않도록 저장된 목록과 합친다.
    final pendingChanges = _favorites.isNotEmpty;
    _favorites.addAll(prefs.getStringList(_key) ?? const []);
    if (pendingChanges) _persist();
  }

  void toggle(String english) {
    if (!_favorites.remove(english)) _favorites.add(english);
    _persist();
  }

  /// 별표를 추가만 한다. 퀴즈 오답 등록용 — toggle()을 쓰면 이미 별표된
  /// 단어가 해제되므로 이 메서드를 써야 한다.
  void add(String english) {
    if (!_favorites.add(english)) return;
    _persist();
  }

  bool isFavorite(String english) => _favorites.contains(english);

  Set<String> getFavorites() => Set.unmodifiable(_favorites);

  // init() 전이면 메모리에만 두고, init()에서 저장한다.
  void _persist() => _prefs?.setStringList(_key, _favorites.toList());
}
