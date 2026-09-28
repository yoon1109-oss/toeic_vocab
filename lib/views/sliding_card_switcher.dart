import 'package:flutter/material.dart';

/// 카드가 바뀔 때 이동 방향으로 미끄러지며 교체되는 애니메이션.
///
/// [cardId]가 바뀌면 새 카드로 전환한다. [direction]이 1이면 다음(오른쪽에서
/// 들어오고 왼쪽으로 나감), -1이면 이전(반대 방향).
class SlidingCardSwitcher extends StatelessWidget {
  final Object cardId;
  final int direction;
  final Widget child;

  const SlidingCardSwitcher({
    super.key,
    required this.cardId,
    required this.direction,
    required this.child,
  });

  static const double _distance = 0.25;

  @override
  Widget build(BuildContext context) {
    // 시스템의 '애니메이션 줄이기' 설정을 따른다.
    final reduceMotion = MediaQuery.maybeDisableAnimationsOf(context) ?? false;
    final currentKey = ValueKey(cardId);

    return AnimatedSwitcher(
      duration:
          reduceMotion ? Duration.zero : const Duration(milliseconds: 220),
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      transitionBuilder: (child, animation) {
        final isIncoming = child.key == currentKey;
        // 나가는 카드는 animation이 1→0으로 진행되므로 begin이 최종 위치가 된다.
        final begin = Offset(
          (isIncoming ? _distance : -_distance) * direction,
          0,
        );
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween(begin: begin, end: Offset.zero).animate(animation),
            child: child,
          ),
        );
      },
      child: KeyedSubtree(key: currentKey, child: child),
    );
  }
}
