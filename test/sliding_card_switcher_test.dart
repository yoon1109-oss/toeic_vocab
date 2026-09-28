import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toeic_vocab/views/sliding_card_switcher.dart';

Widget _host(String id, int direction) => MaterialApp(
      home: Scaffold(
        body: SlidingCardSwitcher(
          cardId: id,
          direction: direction,
          child: Text(id),
        ),
      ),
    );

void main() {
  testWidgets('다음으로 넘기면 새 카드는 오른쪽에서, 이전 카드는 왼쪽으로', (tester) async {
    await tester.pumpWidget(_host('apply', 1));
    await tester.pumpWidget(_host('hire', 1));
    await tester.pump(const Duration(milliseconds: 50));

    // 전환 중에는 두 카드가 함께 보인다
    final inX = tester.getCenter(find.text('hire')).dx;
    final outX = tester.getCenter(find.text('apply')).dx;
    expect(inX, greaterThan(outX));

    await tester.pumpAndSettle();
    expect(find.text('apply'), findsNothing);
    expect(find.text('hire'), findsOneWidget);
  });

  testWidgets('이전으로 넘기면 반대 방향으로 움직인다', (tester) async {
    await tester.pumpWidget(_host('hire', -1));
    await tester.pumpWidget(_host('apply', -1));
    await tester.pump(const Duration(milliseconds: 50));

    final inX = tester.getCenter(find.text('apply')).dx;
    final outX = tester.getCenter(find.text('hire')).dx;
    expect(inX, lessThan(outX));
    await tester.pumpAndSettle();
  });

  testWidgets('애니메이션 줄이기 설정이면 즉시 교체된다', (tester) async {
    Widget host(String id) => MediaQuery(
          data: const MediaQueryData(disableAnimations: true),
          child: _host(id, 1),
        );
    await tester.pumpWidget(host('apply'));
    await tester.pumpWidget(host('hire'));
    await tester.pump();
    expect(find.text('apply'), findsNothing);
    expect(find.text('hire'), findsOneWidget);
  });
}
