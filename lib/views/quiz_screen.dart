import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../viewmodels/quiz_controller.dart';
import '../viewmodels/word_viewmodel.dart';
import 'level_tab_bar.dart';
import 'quiz_result_view.dart';
import 'quiz_view.dart';

/// 세트 완료 직후 나오는 복습 퀴즈 화면.
class QuizScreen extends StatelessWidget {
  final WordViewModel viewModel;
  final QuizController quiz;

  const QuizScreen({super.key, required this.viewModel, required this.quiz});

  /// 예: 'TOEIC Lv.2', 'OPIc 중급'
  String get _levelLabel {
    final mode = viewModel.mode;
    final prefix = mode == VocabMode.toeic ? 'TOEIC' : 'OPIc';
    final labels = LevelTabBar.labelsFor(mode);
    final i = (viewModel.currentLevel - 1).clamp(0, labels.length - 1);
    return '$prefix ${labels[i]}';
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final onHeader = colorScheme.onPrimary;
    final finished = quiz.isFinished;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: colorScheme.surfaceContainerLowest,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: colorScheme.primary,
              child: SafeArea(
                bottom: false,
                child: Column(
                  children: [
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.close_rounded, size: 26),
                            color: onHeader,
                            onPressed: () => viewModel.exitQuiz(),
                            tooltip: '퀴즈 종료',
                          ),
                          const SizedBox(width: 4),
                          Text(
                            finished
                                ? '퀴즈 결과'
                                : '세트 ${viewModel.currentSetNumber} 복습 퀴즈',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: onHeader,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            finished ? _levelLabel : '뜻 고르기',
                            style: TextStyle(
                              fontSize: 13,
                              color: onHeader.withValues(alpha: 0.75),
                            ),
                          ),
                          Text(
                            finished
                                ? '${quiz.score} / ${quiz.total}'
                                : '${quiz.currentNumber} / ${quiz.total}',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: onHeader,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 6, 24, 22),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: LinearProgressIndicator(
                          value: finished
                              ? 1.0
                              : (quiz.total > 0
                                  ? quiz.currentNumber / quiz.total
                                  : 0.0),
                          backgroundColor: onHeader.withValues(alpha: 0.25),
                          color: onHeader,
                          minHeight: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(height: 20, color: colorScheme.primary),
                  ),
                  Positioned.fill(
                    child: finished
                        ? QuizResultView(
                            score: quiz.score,
                            total: quiz.total,
                            wrongWords: quiz.wrongWords,
                            onRetryWrong: quiz.wrongWords.isEmpty
                                ? null
                                : () => quiz.retryWrongOnly(),
                            onNextSet: () => viewModel.finishQuizAndGoNext(),
                          )
                        : QuizView(controller: quiz),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
