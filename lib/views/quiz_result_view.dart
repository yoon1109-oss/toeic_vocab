import 'package:flutter/material.dart';

import '../models/word.dart';

/// 퀴즈 결과 화면. 점수와 틀린 단어 목록을 보여준다.
class QuizResultView extends StatelessWidget {
  final int score;
  final int total;
  final List<Word> wrongWords;
  final VoidCallback? onRetryWrong;
  final VoidCallback onNextSet;

  const QuizResultView({
    super.key,
    required this.score,
    required this.total,
    required this.wrongWords,
    required this.onNextSet,
    this.onRetryWrong,
  });

  String get _comment {
    if (total == 0) return '';
    if (score == total) return '완벽해요! 이 세트는 확실히 외웠습니다';
    if (score >= total * 0.7) return '거의 다 외웠어요';
    return '틀린 단어를 별표에서 다시 확인해보세요';
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

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
              padding: const EdgeInsets.fromLTRB(20, 28, 20, 16),
              child: Column(
                children: [
                  Text(
                    '이번 세트 점수',
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1,
                      color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$score',
                        style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.w800,
                          height: 1,
                          color: colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '/ $total',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: colorScheme.onSurfaceVariant
                              .withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _comment,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),

                  if (wrongWords.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    Divider(
                      height: 1,
                      color: colorScheme.outline.withValues(alpha: 0.15),
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '틀린 단어 ${wrongWords.length}개',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.5,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        itemCount: wrongWords.length,
                        separatorBuilder: (_, __) => Divider(
                          height: 1,
                          color: colorScheme.outline.withValues(alpha: 0.08),
                        ),
                        itemBuilder: (context, i) {
                          final word = wrongWords[i];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        word.english,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: colorScheme.onSurface,
                                        ),
                                      ),
                                      Text(
                                        word.meaning,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.star_rounded,
                                  size: 20,
                                  color: Color(0xFFFFD700),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ] else
                    const Spacer(),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  if (onRetryWrong != null) ...[
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton.icon(
                        onPressed: onRetryWrong,
                        icon: const Icon(Icons.replay_rounded, size: 20),
                        label: const Text(
                          '틀린 단어만 다시 풀기',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: colorScheme.primary),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: FilledButton(
                      onPressed: onNextSet,
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      child: const Text(
                        '다음 세트로',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
