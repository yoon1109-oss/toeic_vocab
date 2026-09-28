import 'package:flutter/material.dart';

import '../viewmodels/quiz_controller.dart';

/// 4지선다 문항 화면. 선택 즉시 채점하고 정답을 색으로 표시한다.
class QuizView extends StatelessWidget {
  final QuizController controller;

  const QuizView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final question = controller.current;
    final answered = controller.hasAnswered;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow.withValues(alpha: 0.10),
                    blurRadius: 24,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
              child: Column(
                children: [
                  // 문제 + 선택지를 한 덩어리로 묶어 카드 중앙에 배치
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '알맞은 뜻을 고르세요',
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 1,
                                color: colorScheme.onSurfaceVariant
                                    .withValues(alpha: 0.7),
                              ),
                            ),
                            const SizedBox(height: 12),

                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                question.word.english,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.8,
                                  height: 1.1,
                                  color: colorScheme.onSurface,
                                ),
                              ),
                            ),

                            const SizedBox(height: 28),

                            for (var i = 0; i < question.options.length; i++)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: _OptionTile(
                                  label: question.options[i],
                                  state: _stateFor(i),
                                  isDark: isDark,
                                  onTap: answered
                                      ? null
                                      : () => controller.select(i),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // 오답이면 별표 자동 추가 안내
                  if (answered && !controller.lastAnswerCorrect)
                    _FavoriteNotice(isDark: isDark),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton(
                  onPressed: answered ? controller.next : null,
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                  ),
                  child: Text(
                    controller.isLastQuestion ? '결과 보기' : '다음 문제',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _OptionState _stateFor(int index) {
    if (!controller.hasAnswered) return _OptionState.idle;
    if (index == controller.current.answerIndex) return _OptionState.correct;
    if (index == controller.selectedIndex) return _OptionState.wrong;
    return _OptionState.dimmed;
  }
}

enum _OptionState { idle, correct, wrong, dimmed }

class _OptionTile extends StatelessWidget {
  final String label;
  final _OptionState state;
  final bool isDark;
  final VoidCallback? onTap;

  const _OptionTile({
    required this.label,
    required this.state,
    required this.isDark,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final (Color border, Color fill, Color text, IconData? icon) =
        switch (state) {
      _OptionState.correct => (
          isDark ? const Color(0xFF5DCAA5) : const Color(0xFF0F6E56),
          isDark ? const Color(0xFF085041) : const Color(0xFFE1F5EE),
          isDark ? const Color(0xFFE1F5EE) : const Color(0xFF085041),
          Icons.check_rounded,
        ),
      _OptionState.wrong => (
          isDark ? const Color(0xFFF09595) : const Color(0xFFA32D2D),
          isDark ? const Color(0xFF791F1F) : const Color(0xFFFCEBEB),
          isDark ? const Color(0xFFFCEBEB) : const Color(0xFF791F1F),
          Icons.close_rounded,
        ),
      _OptionState.dimmed => (
          colorScheme.outline.withValues(alpha: 0.15),
          Colors.transparent,
          colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
          null,
        ),
      _OptionState.idle => (
          colorScheme.outlineVariant,
          Colors.transparent,
          colorScheme.onSurface,
          null,
        ),
    };

    return Material(
      color: fill,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
          decoration: BoxDecoration(
            border: Border.all(color: border, width: 1.5),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: state == _OptionState.correct
                        ? FontWeight.w700
                        : FontWeight.w500,
                    color: text,
                    height: 1.3,
                  ),
                ),
              ),
              if (icon != null) Icon(icon, size: 20, color: text),
            ],
          ),
        ),
      ),
    );
  }
}

class _FavoriteNotice extends StatelessWidget {
  final bool isDark;

  const _FavoriteNotice({required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF412402) : const Color(0xFFFAEEDA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            Icons.star_rounded,
            size: 18,
            color: isDark ? const Color(0xFFFAC775) : const Color(0xFF854F0B),
          ),
          const SizedBox(width: 8),
          Text(
            '별표에 자동 추가했습니다',
            style: TextStyle(
              fontSize: 12,
              color: isDark ? const Color(0xFFFAEEDA) : const Color(0xFF633806),
            ),
          ),
        ],
      ),
    );
  }
}
