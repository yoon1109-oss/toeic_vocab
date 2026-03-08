import 'package:flutter_test/flutter_test.dart';
import 'package:toeic_vocab/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const TOEICVocabApp());
    expect(find.text('Lv.1'), findsOneWidget);
  });
}
