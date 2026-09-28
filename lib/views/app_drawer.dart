import 'package:flutter/material.dart';
import '../viewmodels/word_viewmodel.dart';

/// 학습 모드 선택과 설정(자동 발음·퀴즈)을 담은 사이드 메뉴.
class AppDrawer extends StatelessWidget {
  final WordViewModel viewModel;

  const AppDrawer({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Drawer header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.school_rounded,
                    size: 40,
                    color: colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '영어 단어장',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '학습 모드를 선택하세요',
                    style: TextStyle(
                      fontSize: 14,
                      color:
                          colorScheme.onPrimaryContainer.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // TOEIC menu item
            _DrawerMenuItem(
              icon: Icons.business_center_rounded,
              title: 'TOEIC 단어',
              subtitle: '토익 필수 어휘',
              isSelected: viewModel.mode == VocabMode.toeic &&
                  !viewModel.isFavoriteMode,
              onTap: () {
                viewModel.setMode(VocabMode.toeic);
                Navigator.pop(context);
              },
            ),

            // OPIc menu item
            _DrawerMenuItem(
              icon: Icons.record_voice_over_rounded,
              title: 'OPIc 단어',
              subtitle: 'OPIc 필수 어휘',
              isSelected:
                  viewModel.mode == VocabMode.opic && !viewModel.isFavoriteMode,
              onTap: () {
                viewModel.setMode(VocabMode.opic);
                Navigator.pop(context);
              },
            ),

            // OPIc 실전 문장 menu item
            _DrawerMenuItem(
              icon: Icons.chat_bubble_outline_rounded,
              title: 'OPIc 실전 문장',
              subtitle: '주제별 핵심 표현 150',
              isSelected: viewModel.mode == VocabMode.opicPhrase &&
                  !viewModel.isFavoriteMode,
              onTap: () {
                viewModel.setMode(VocabMode.opicPhrase);
                Navigator.pop(context);
              },
            ),

            const Divider(indent: 16, endIndent: 16),

            // 별표 다시보기
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              child: ListTile(
                leading: const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFFFD700),
                ),
                title: const Text('별표 다시보기'),
                subtitle: Text(
                  '즐겨찾기한 단어 학습',
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onTap: () {
                  Navigator.pop(context);
                  viewModel.enterFavoriteMode();
                },
              ),
            ),

            const Divider(indent: 16, endIndent: 16),

            // Auto-speak toggle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(
                leading: Icon(
                  Icons.volume_up_rounded,
                  color: colorScheme.onSurfaceVariant,
                ),
                title: const Text('자동 발음'),
                subtitle: Text(
                  viewModel.autoSpeak ? '켜짐' : '꺼짐',
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                trailing: Switch(
                  value: viewModel.autoSpeak,
                  onChanged: (_) => viewModel.toggleAutoSpeak(),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            // 퀴즈 모드 toggle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(
                leading: Icon(
                  Icons.quiz_rounded,
                  color: colorScheme.onSurfaceVariant,
                ),
                title: const Text('퀴즈 모드'),
                subtitle: Text(
                  viewModel.quizModeEnabled ? '세트 완료 후 4지선다 퀴즈' : '꺼짐',
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                trailing: Switch(
                  value: viewModel.quizModeEnabled,
                  onChanged: (_) => viewModel.toggleQuizMode(),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  const _DrawerMenuItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: ListTile(
        leading: Icon(
          icon,
          color:
              isSelected ? colorScheme.primary : colorScheme.onSurfaceVariant,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
            color: isSelected ? colorScheme.primary : colorScheme.onSurface,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 12,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        selected: isSelected,
        selectedTileColor: colorScheme.primaryContainer.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: onTap,
      ),
    );
  }
}
