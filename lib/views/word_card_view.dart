import 'package:flutter/material.dart';
import '../models/word.dart';
import '../models/word_example.dart';

class WordCardView extends StatefulWidget {
  final Word word;
  final int wordNumberInSet;
  final int totalInSet;
  final VoidCallback onSpeak;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;
  final List<WordExample> examples;

  const WordCardView({
    super.key,
    required this.word,
    required this.wordNumberInSet,
    required this.totalInSet,
    required this.onSpeak,
    required this.isFavorite,
    required this.onToggleFavorite,
    this.examples = const [],
  });

  @override
  State<WordCardView> createState() => _WordCardViewState();
}

class _WordCardViewState extends State<WordCardView> {
  int _examplePage = 0;

  // 예문 섹션 높이 고정값 (예문 없을 때 phantom으로 사용 → 단어 위치 항상 동일)
  static const double _exampleSectionHeight = 148.0;

  @override
  void didUpdateWidget(WordCardView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.word.english != widget.word.english) {
      _examplePage = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final hasExamples = widget.examples.isNotEmpty;

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
            // ── 닷 인디케이터 ──────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 16, 22, 0),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(widget.totalInSet, (i) {
                    final isCurrent = i == widget.wordNumberInSet - 1;
                    final isDone = i < widget.wordNumberInSet;
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

            // ── 단어 영역 (Expanded) + 예문 영역 (고정 높이) ──────
            // 예문 유무와 무관하게 단어 영역 높이가 항상 동일
            // → Center가 잡는 중앙점이 항상 같은 위치
            Expanded(
              child: Column(
                children: [
                  // 단어 — 항상 이 영역의 정중앙
                  // 화면이 아주 낮을 때는 넘치지 않고 스크롤된다
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // 영어 단어
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  widget.word.english,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 52,
                                    fontWeight: FontWeight.w800,
                                    color: colorScheme.onSurface,
                                    letterSpacing: -1.0,
                                    height: 1.05,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 8),

                              // 발음기호
                              Text(
                                widget.word.phonetic,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: colorScheme.onSurfaceVariant
                                      .withValues(alpha: 0.55),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.3,
                                ),
                              ),

                              const SizedBox(height: 24),

                              // 한글 뜻
                              Text(
                                widget.word.meaning,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: colorScheme.onSurface,
                                  height: 1.4,
                                ),
                              ),

                              const SizedBox(height: 16),

                              // 발음 버튼(중앙) + 별표(우측)
                              SizedBox(
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Material(
                                      color: colorScheme.primaryContainer,
                                      shape: const CircleBorder(),
                                      child: InkWell(
                                        onTap: widget.onSpeak,
                                        customBorder: const CircleBorder(),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Icon(
                                            Icons.volume_up_rounded,
                                            size: 14,
                                            color: colorScheme.primary,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: IconButton(
                                        onPressed: widget.onToggleFavorite,
                                        padding: EdgeInsets.zero,
                                        icon: Icon(
                                          widget.isFavorite
                                              ? Icons.star_rounded
                                              : Icons.star_border_rounded,
                                          size: 28,
                                          color: widget.isFavorite
                                              ? const Color(0xFFFFD700)
                                              : colorScheme.outline
                                                  .withValues(alpha: 0.4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ── 예문 섹션 or phantom (항상 동일 높이) ──────────
                  if (hasExamples)
                    _buildExampleSection(colorScheme)
                  else
                    const SizedBox(height: _exampleSectionHeight),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleSection(ColorScheme colorScheme) {
    return SizedBox(
      height: _exampleSectionHeight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Divider(
              height: 1,
              color: colorScheme.outline.withValues(alpha: 0.15),
            ),
          ),

          // EXAMPLE 레이블 + 카운터
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'EXAMPLE',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                    color: colorScheme.primary,
                  ),
                ),
                Text(
                  '${_examplePage + 1} / ${widget.examples.length}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),

          // 예문 카드
          Expanded(
            child: GestureDetector(
              onHorizontalDragEnd: (details) {
                final v = details.primaryVelocity ?? 0;
                if (v < -300 && _examplePage < widget.examples.length - 1) {
                  setState(() => _examplePage++);
                } else if (v > 300 && _examplePage > 0) {
                  setState(() => _examplePage--);
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 6, 16, 12),
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.examples[_examplePage].english,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSurface,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.examples[_examplePage].korean,
                        style: TextStyle(
                          fontSize: 12,
                          color: colorScheme.primary.withValues(alpha: 0.8),
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
