import 'package:flutter/material.dart';
import '../models/opic_phrase.dart';

class PhraseCardView extends StatelessWidget {
  final OPIcPhrase phrase;
  final int phraseNumber;
  final int totalPhrases;
  final VoidCallback onSpeak;

  const PhraseCardView({
    super.key,
    required this.phrase,
    required this.phraseNumber,
    required this.totalPhrases,
    required this.onSpeak,
  });

  // 영어 문장 길이에 따른 폰트 크기 자동 조절
  double get _englishFontSize {
    final len = phrase.english.length;
    if (len > 160) return 15;
    if (len > 100) return 17;
    if (len > 60)  return 19;
    return 22;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // ── 진행 도트 ───────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 16, 22, 0),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(totalPhrases, (i) {
                      final isCurrent = i == phraseNumber - 1;
                      final isDone = i < phraseNumber;
                      return Container(
                        width: isCurrent ? 20 : 7,
                        height: 7,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: isDone
                              ? colorScheme.primary
                              : colorScheme.outline.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),

            // ── 본문 영역 (스크롤 가능) ─────────────────────
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(28, 20, 28, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 토픽 뱃지
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        phrase.topic,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: colorScheme.primary,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    // 영어 문장 (길이에 따라 폰트 자동 조절)
                    Text(
                      phrase.english,
                      style: TextStyle(
                        fontSize: _englishFontSize,
                        fontWeight: FontWeight.w700,
                        color: colorScheme.onSurface,
                        height: 1.55,
                        letterSpacing: -0.2,
                      ),
                    ),

                    if (phrase.korean.isNotEmpty) ...[
                      const SizedBox(height: 14),
                      // 구분선
                      Divider(
                        height: 1,
                        color: colorScheme.outline.withValues(alpha: 0.2),
                      ),
                      const SizedBox(height: 14),
                      // 한국어 해석
                      Text(
                        phrase.korean,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: colorScheme.primary.withValues(alpha: 0.8),
                          height: 1.6,
                        ),
                      ),
                    ],

                    const SizedBox(height: 24),

                    // 발음 버튼 (중앙)
                    Center(
                      child: Material(
                        color: colorScheme.primaryContainer,
                        shape: const CircleBorder(),
                        child: InkWell(
                          onTap: onSpeak,
                          customBorder: const CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Icon(
                              Icons.volume_up_rounded,
                              size: 22,
                              color: colorScheme.primary,
                            ),
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
      ),
    );
  }
}
