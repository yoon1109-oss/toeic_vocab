import 'package:flutter/material.dart';
import '../viewmodels/word_viewmodel.dart';

/// 컬러 헤더 위에 올라가는 레벨 탭바.
/// 선택된 탭은 onPrimary(흰색) 알약, 나머지는 반투명 텍스트.
class LevelTabBar extends StatelessWidget {
  final int selectedLevel;
  final ValueChanged<int> onSelectLevel;
  final VocabMode mode;

  const LevelTabBar({
    super.key,
    required this.selectedLevel,
    required this.onSelectLevel,
    this.mode = VocabMode.toeic,
  });

  List<String> get _labels {
    if (mode == VocabMode.toeic) return ['Lv.1', 'Lv.2', 'Lv.3'];
    if (mode == VocabMode.opicPhrase) return ['1단계', '2단계', '3단계'];
    return ['초급', '중급', '고급'];
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final onHeader = colorScheme.onPrimary;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: onHeader.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(999),
        ),
        padding: const EdgeInsets.all(4),
        child: Row(
          children: List.generate(3, (index) {
            final level = index + 1;
            final isSelected = selectedLevel == level;

            return Expanded(
              child: GestureDetector(
                onTap: () => onSelectLevel(level),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  decoration: BoxDecoration(
                    color: isSelected ? onHeader : Colors.transparent,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    _labels[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.w500,
                      color: isSelected
                          ? colorScheme.primary
                          : onHeader.withValues(alpha: 0.8),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
