import 'package:flutter/material.dart';

class LevelTabBar extends StatelessWidget {
  final int selectedLevel;
  final ValueChanged<int> onSelectLevel;

  const LevelTabBar({
    super.key,
    required this.selectedLevel,
    required this.onSelectLevel,
  });

  static const List<Color> levelColors = [
    Color(0xFF2196F3), // Level 1 - Blue
    Color(0xFFFF9800), // Level 2 - Orange
    Color(0xFFF44336), // Level 3 - Red
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(4),
        child: Row(
          children: List.generate(3, (index) {
            final level = index + 1;
            final isSelected = selectedLevel == level;
            final color = levelColors[index];

            return Expanded(
              child: GestureDetector(
                onTap: () => onSelectLevel(level),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: isSelected ? color : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: color.withOpacity(0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            )
                          ]
                        : null,
                  ),
                  child: Text(
                    'Lv.$level',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.w500,
                      color: isSelected
                          ? Colors.white
                          : Theme.of(context).colorScheme.onSurfaceVariant,
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
