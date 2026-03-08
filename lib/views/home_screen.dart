import 'package:flutter/material.dart';
import '../viewmodels/word_viewmodel.dart';
import 'level_tab_bar.dart';
import 'word_card_view.dart';
import 'completion_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WordViewModel _viewModel = WordViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.addListener(_onChanged);
  }

  void _onChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    _viewModel.removeListener(_onChanged);
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),

            // Level Tabs
            LevelTabBar(
              selectedLevel: _viewModel.currentLevel,
              onSelectLevel: (level) => _viewModel.selectLevel(level),
            ),

            // Progress Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '세트 ${_viewModel.currentSetNumber} / ${_viewModel.totalSets}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  Text(
                    '${_viewModel.currentWordNumberTotal} / ${_viewModel.totalWordsInLevel}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ],
              ),
            ),

            // Main Content
            Expanded(
              child: Center(
                child: _viewModel.showCompletion
                    ? CompletionView(
                        onReview: () => _viewModel.reviewCurrentSet(),
                        onNext: () => _viewModel.goToNextSet(),
                        isLastSet:
                            _viewModel.currentSetIndex >=
                            _viewModel.totalSets - 1,
                      )
                    : _viewModel.currentWord != null
                        ? WordCardView(
                            word: _viewModel.currentWord!,
                            wordNumberInSet: _viewModel.currentWordNumberInSet,
                            totalInSet: _viewModel.currentSet.length,
                            onSpeak: () =>
                                _viewModel.speak(_viewModel.currentWord!.english),
                          )
                        : const SizedBox.shrink(),
              ),
            ),

            // Navigation Buttons
            if (!_viewModel.showCompletion)
              Padding(
                padding: const EdgeInsets.only(bottom: 40, top: 16),
                child: _NavigationButtons(
                  isFirstWord: _viewModel.isFirstWord,
                  onPrevious: () => _viewModel.previousWord(),
                  onNext: () => _viewModel.nextWord(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _NavigationButtons extends StatelessWidget {
  final bool isFirstWord;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const _NavigationButtons({
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
                  ? colorScheme.outline.withOpacity(0.4)
                  : colorScheme.primary,
              side: BorderSide(
                color: isFirstWord
                    ? colorScheme.outline.withOpacity(0.2)
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
