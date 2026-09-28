import 'package:shared_preferences/shared_preferences.dart';

class FavoriteService {
  static const String _key = 'favorite_words';
  late SharedPreferences _prefs;
  Set<String> _favorites = {};

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    final list = _prefs.getStringList(_key) ?? [];
    _favorites = list.toSet();
  }

  void toggle(String english) {
    if (_favorites.contains(english)) {
      _favorites.remove(english);
    } else {
      _favorites.add(english);
    }
    _prefs.setStringList(_key, _favorites.toList());
  }

  /// 별표를 추가만 한다. 퀴즈 오답 등록용 — toggle()을 쓰면 이미 별표된
  /// 단어가 해제되므로 이 메서드를 써야 한다.
  void add(String english) {
    if (!_favorites.add(english)) return;
    _prefs.setStringList(_key, _favorites.toList());
  }

  bool isFavorite(String english) => _favorites.contains(english);

  Set<String> getFavorites() => Set.unmodifiable(_favorites);
}
