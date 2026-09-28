import 'package:flutter/material.dart';

/// 단어 카드 아래 이전/다음 버튼.
class NavigationButtons extends StatelessWidget {
  final bool isFirstWord;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const NavigationButtons({
    super.key,
    required this.isFirstWord,
    required this.onPrevious,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Previous Button
        SizedBox(
          width: 140,
          height: 52,
          child: OutlinedButton.icon(
            onPressed: isFirstWord ? null : onPrevious,
            icon: const Icon(Icons.chevron_left, size: 24),
            label: const Text('이전', style: TextStyle(fontSize: 17)),
            style: OutlinedButton.styleFrom(
              foregroundColor: isFirstWord
                  ? colorScheme.outline.withValues(alpha: 0.4)
                  : colorScheme.primary,
              side: BorderSide(
                color: isFirstWord
                    ? colorScheme.outline.withValues(alpha: 0.2)
                    : colorScheme.primary,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
          ),
        ),

        const SizedBox(width: 24),

        // Next Button
        SizedBox(
          width: 140,
          height: 52,
          child: FilledButton.icon(
            onPressed: onNext,
            icon: const Text('다음', style: TextStyle(fontSize: 17)),
            label: const Icon(Icons.chevron_right, size: 24),
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
