import 'package:flutter/material.dart';
import '../models/word.dart';

class WordCardView extends StatelessWidget {
  final Word word;
  final int wordNumberInSet;
  final int totalInSet;
  final VoidCallback onSpeak;

  const WordCardView({
    super.key,
    required this.word,
    required this.wordNumberInSet,
    required this.totalInSet,
    required this.onSpeak,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: colorScheme.shadow.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Word counter dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(totalInSet, (i) {
                return Container(
                  width: i == wordNumberInSet - 1 ? 20 : 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: i < wordNumberInSet
                        ? colorScheme.primary
                        : colorScheme.outline.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),

            const SizedBox(height: 36),

            // English Word
            Text(
              word.english,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
                letterSpacing: -0.5,
              ),
            ),

            const SizedBox(height: 12),

            // Phonetic
            Text(
              word.phonetic,
              style: TextStyle(
                fontSize: 20,
                color: colorScheme.onSurfaceVariant,
              ),
            ),

            const SizedBox(height: 20),

            // Divider
            Container(
              width: 60,
              height: 2,
              decoration: BoxDecoration(
                color: colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(1),
              ),
            ),

            const SizedBox(height: 20),

            // Meaning
            Text(
              word.meaning,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: colorScheme.onSurface.withOpacity(0.85),
                height: 1.4,
              ),
            ),

            const SizedBox(height: 28),

            // Speaker Button
            Material(
              color: colorScheme.primaryContainer,
              shape: const CircleBorder(),
              child: InkWell(
                onTap: onSpeak,
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Icon(
                    Icons.volume_up_rounded,
                    size: 32,
                    color: colorScheme.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
