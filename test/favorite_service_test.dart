import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toeic_vocab/services/favorite_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('init 전에 누른 별표도 오류 없이 저장된다', () async {
    SharedPreferences.setMockInitialValues({
      'favorite_words': ['apply'],
    });
    final service = FavoriteService();

    service.toggle('hire');
    expect(service.isFavorite('hire'), isTrue);

    await service.init();
    expect(service.getFavorites(), {'apply', 'hire'});

    final prefs = await SharedPreferences.getInstance();
    expect(
        prefs.getStringList('favorite_words'), containsAll(['apply', 'hire']));
  });
}
