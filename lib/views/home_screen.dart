import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../viewmodels/word_viewmodel.dart';
import '../models/word_example.dart';
import '../data/opic_phrases_data.dart';
import '../services/examples_repository.dart';
import '../viewmodels/quiz_controller.dart';
import 'level_tab_bar.dart';
import 'word_card_view.dart';
import 'phrase_card_view.dart';
import 'completion_view.dart';
import 'quiz_view.dart';
import 'quiz_result_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WordViewModel _viewModel = WordViewModel();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ExamplesRepository _examples = const ExamplesRepository();

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

  /// 현재 모드·레벨에 맞는 예문 반환 (없으면 빈 리스트)
  List<WordExample> _getExamples(String english) {
    // 즐겨찾기 모드: TOEIC/OPIc 모든 레벨에서 예문 검색
    if (_viewModel.isFavoriteMode) {
      return _examples.favoriteExamplesFor(english);
    }
    return _examples.examplesFor(
      mode: _viewModel.mode,
      level: _viewModel.currentLevel,
      english: english,
    );
  }

  bool get _isPhraseMode => _viewModel.mode == VocabMode.opicPhrase;

  bool get _showCurrentCompletion => _isPhraseMode
      ? _viewModel.showPhraseCompletion
      : _viewModel.showCompletion;

  String get _appBarTitle {
    if (_viewModel.isFavoriteMode) return '별표 단어 학습';
    switch (_viewModel.mode) {
      case VocabMode.toeic:
        return 'TOEIC 단어';
      case VocabMode.opic:
        return 'OPIc 단어';
      case VocabMode.opicPhrase:
        return 'OPIc 실전 문장';
    }
  }

  // ── 모드별 컬러 테마 ──────────────────────────────────────
  ThemeData _buildModeTheme(BuildContext context) {
    final base = Theme.of(context);
    final cs = base.colorScheme;
    switch (_viewModel.mode) {
      case VocabMode.opic:
        return base.copyWith(
          colorScheme: cs.copyWith(
            primary: const Color(0xFF0284C7),
            onPrimary: Colors.white,
            primaryContainer: const Color(0xFFE0F2FE),
            onPrimaryContainer: const Color(0xFF0369A1),
            surfaceContainerLowest: const Color(0xFFF0F9FF),
            surfaceContainer: const Color(0xFFE0F2FE),
            outline: const Color(0xFF7DD3FC),
            outlineVariant: const Color(0xFFBAE6FD),
          ),
        );
      case VocabMode.opicPhrase:
        return base.copyWith(
          colorScheme: cs.copyWith(
            primary: const Color(0xFF0D9488),
            onPrimary: Colors.white,
            primaryContainer: const Color(0xFFCCFBF1),
            onPrimaryContainer: const Color(0xFF0F766E),
            surfaceContainerLowest: const Color(0xFFF0FDFA),
            surfaceContainer: const Color(0xFFCCFBF1),
            outline: const Color(0xFF5EEAD4),
            outlineVariant: const Color(0xFF99F6E4),
          ),
        );
      default:
        return base; // TOEIC: 기존 인디고 유지
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _buildModeTheme(context),
      child: Builder(builder: _buildScaffold),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    final quiz = _viewModel.quizController;
    if (_viewModel.showQuiz && quiz != null) {
      return _buildQuizScaffold(context, quiz);
    }

    final colorScheme = Theme.of(context).colorScheme;
    final onHeader = colorScheme.onPrimary;
    final isFavoriteEmpty = !_isPhraseMode &&
        _viewModel.isFavoriteMode &&
        _viewModel.currentLevelWords.isEmpty;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: colorScheme.surfaceContainerLowest,
        drawer: _buildDrawer(context),
        body: Column(
          children: [
            // ── 컬러 헤더: 앱바 + 레벨 탭 + 진행 정보 ──────────
            Container(
              width: double.infinity,
              color: colorScheme.primary,
              child: SafeArea(
                bottom: false,
                child: Column(
                  children: [
                    const SizedBox(height: 4),

                    // App Bar with hamburger menu
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          if (_viewModel.isFavoriteMode)
                            IconButton(
                              icon: const Icon(Icons.arrow_back_rounded,
                                  size: 26),
                              color: onHeader,
                              onPressed: () => _viewModel.exitFavoriteMode(),
                              tooltip: '돌아가기',
                            )
                          else
                            IconButton(
                              icon: const Icon(Icons.menu, size: 26),
                              color: onHeader,
                              onPressed: () =>
                                  _scaffoldKey.currentState?.openDrawer(),
                            ),
                          const SizedBox(width: 4),
                          if (_viewModel.isFavoriteMode)
                            const Icon(
                              Icons.star_rounded,
                              color: Color(0xFFFFD700),
                              size: 24,
                            ),
                          if (_viewModel.isFavoriteMode)
                            const SizedBox(width: 8),
                          Text(
                            _appBarTitle,
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

                    const SizedBox(height: 8),

                    // Level Tabs (word modes)
                    if (!_viewModel.isFavoriteMode && !_isPhraseMode)
                      LevelTabBar(
                        selectedLevel: _viewModel.currentLevel,
                        onSelectLevel: (level) =>
                            _viewModel.selectLevel(level),
                        mode: _viewModel.mode,
                      ),

                    // Phrase Level Tabs (phrase mode)
                    if (_isPhraseMode)
                      LevelTabBar(
                        selectedLevel: _viewModel.currentPhraseLevel,
                        onSelectLevel: (level) =>
                            _viewModel.selectPhraseLevel(level),
                        mode: VocabMode.opicPhrase,
                      ),

                    // Topic chips (phrase mode only)
                    if (_isPhraseMode) _buildTopicChips(context),

                    // Progress Info
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 14, 24, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _isPhraseMode
                                ? OPIcPhrasesData
                                    .topics[_viewModel.currentTopicIndex]
                                : _viewModel.isFavoriteMode
                                    ? '별표 단어'
                                    : '세트 ${_viewModel.currentSetNumber} / ${_viewModel.totalSets}',
                            style: TextStyle(
                              fontSize: 13,
                              color: onHeader.withValues(alpha: 0.75),
                            ),
                          ),
                          Text(
                            _isPhraseMode
                                ? '${_viewModel.currentPhraseNumber} / ${_viewModel.totalPhrasesInTopic}'
                                : '${_viewModel.currentWordNumberTotal} / ${_viewModel.totalWordsInLevel}',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: onHeader,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Progress Bar
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 6, 24, 22),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: LinearProgressIndicator(
                          value: _isPhraseMode
                              ? (_viewModel.totalPhrasesInTopic > 0
                                  ? _viewModel.currentPhraseNumber /
                                      _viewModel.totalPhrasesInTopic
                                  : 0)
                              : (_viewModel.totalWordsInLevel > 0
                                  ? _viewModel.currentWordNumberTotal /
                                      _viewModel.totalWordsInLevel
                                  : 0),
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

            // Main Content — 카드 상단이 헤더에 겹쳐 보이도록 컬러 스트립 유지
            Expanded(
              child: Stack(
                children: [
                  if (!isFavoriteEmpty)
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child:
                          Container(height: 20, color: colorScheme.primary),
                    ),
                  Positioned.fill(
                    child: _isPhraseMode
                  ? (_viewModel.showPhraseCompletion
                      ? CompletionView(
                          onReview: () => _viewModel.reviewCurrentTopic(),
                          onNext: () => _viewModel.goToNextTopic(),
                          isLastSet: _viewModel.currentTopicIndex >=
                              _viewModel.totalTopics - 1,
                        )
                      : _viewModel.currentPhrase != null
                          ? GestureDetector(
                              onHorizontalDragEnd: (details) {
                                final velocity =
                                    details.primaryVelocity ?? 0;
                                if (velocity < -300) {
                                  _viewModel.nextPhrase();
                                } else if (velocity > 300 &&
                                    !_viewModel.isFirstPhrase) {
                                  _viewModel.previousPhrase();
                                }
                              },
                              child: PhraseCardView(
                                phrase: _viewModel.currentPhrase!,
                                phraseNumber:
                                    _viewModel.currentPhraseNumber,
                                totalPhrases:
                                    _viewModel.totalPhrasesInTopic,
                                onSpeak: () => _viewModel.speak(
                                    _viewModel.currentPhrase!.english),
                              ),
                            )
                          : const SizedBox.shrink())
                  : _viewModel.isFavoriteMode &&
                          _viewModel.currentLevelWords.isEmpty
                      ? Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 32),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border_rounded,
                                  size: 64,
                                  color: colorScheme.outline.withValues(alpha: 0.3),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  '별표한 단어가 없습니다',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: colorScheme.onSurface
                                        .withValues(alpha: 0.6),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '단어 카드의 ☆를 눌러\n학습할 단어를 추가해보세요',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: colorScheme.outline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : _viewModel.showCompletion
                          ? CompletionView(
                              onReview: () => _viewModel.reviewCurrentSet(),
                              onNext: () => _viewModel.goToNextSet(),
                              isLastSet: _viewModel.currentSetIndex >=
                                  _viewModel.totalSets - 1,
                            )
                          : _viewModel.currentWord != null
                              ? GestureDetector(
                                  onHorizontalDragEnd: (details) {
                                    final velocity =
                                        details.primaryVelocity ?? 0;
                                    if (velocity < -300) {
                                      _viewModel.nextWord();
                                    } else if (velocity > 300 &&
                                        !_viewModel.isFirstWord) {
                                      _viewModel.previousWord();
                                    }
                                  },
                                  child: WordCardView(
                                    word: _viewModel.currentWord!,
                                    wordNumberInSet:
                                        _viewModel.currentWordNumberInSet,
                                    totalInSet:
                                        _viewModel.currentSet.length,
                                    onSpeak: () => _viewModel.speak(
                                      _viewModel.currentWord!.english,
                                      phonetic:
                                          _viewModel.currentWord!.phonetic,
                                    ),
                                    isFavorite: _viewModel.isFavorite(
                                        _viewModel.currentWord!.english),
                                    onToggleFavorite: () =>
                                        _viewModel.toggleFavorite(
                                            _viewModel.currentWord!.english),
                                    examples: _getExamples(
                                        _viewModel.currentWord!.english),
                                  ),
                                )
                              : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),

            // Navigation Buttons
            if (!_showCurrentCompletion &&
                !(!_isPhraseMode &&
                    _viewModel.isFavoriteMode &&
                    _viewModel.currentLevelWords.isEmpty))
              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32, top: 16),
                  child: _NavigationButtons(
                    isFirstWord: _isPhraseMode
                        ? _viewModel.isFirstPhrase
                        : _viewModel.isFirstWord,
                    onPrevious: _isPhraseMode
                        ? () => _viewModel.previousPhrase()
                        : () => _viewModel.previousWord(),
                    onNext: _isPhraseMode
                        ? () => _viewModel.nextPhrase()
                        : () => _viewModel.nextWord(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // ── 퀴즈 화면 (세트 완료 직후) ─────────────────────────────
  Widget _buildQuizScaffold(BuildContext context, QuizController quiz) {
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
                            onPressed: () => _viewModel.exitQuiz(),
                            tooltip: '퀴즈 종료',
                          ),
                          const SizedBox(width: 4),
                          Text(
                            finished
                                ? '퀴즈 결과'
                                : '세트 ${_viewModel.currentSetNumber} 복습 퀴즈',
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
                            finished ? 'OPIc 중급' : '뜻 고르기',
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
                            onNextSet: () => _viewModel.finishQuizAndGoNext(),
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

  // 모드 테마가 적용된 context(_buildScaffold의 Builder context)를 받아야
  // 헤더 색과 일치하는 primary를 얻는다.
  Widget _buildTopicChips(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final onHeader = colorScheme.onPrimary;
    return Container(
      height: 38,
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: OPIcPhrasesData.topics.length,
        itemBuilder: (context, i) {
          final selected = i == _viewModel.currentTopicIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => _viewModel.selectTopic(i),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selected ? onHeader : Colors.transparent,
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(
                    color:
                        selected ? onHeader : onHeader.withValues(alpha: 0.4),
                  ),
                ),
                child: Text(
                  OPIcPhrasesData.topics[i],
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight:
                        selected ? FontWeight.w700 : FontWeight.w500,
                    color: selected
                        ? colorScheme.primary
                        : onHeader.withValues(alpha: 0.85),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
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
              isSelected: _viewModel.mode == VocabMode.toeic &&
                  !_viewModel.isFavoriteMode,
              onTap: () {
                _viewModel.setMode(VocabMode.toeic);
                Navigator.pop(context);
              },
            ),

            // OPIc menu item
            _DrawerMenuItem(
              icon: Icons.record_voice_over_rounded,
              title: 'OPIc 단어',
              subtitle: 'OPIc 필수 어휘',
              isSelected: _viewModel.mode == VocabMode.opic &&
                  !_viewModel.isFavoriteMode,
              onTap: () {
                _viewModel.setMode(VocabMode.opic);
                Navigator.pop(context);
              },
            ),

            // OPIc 실전 문장 menu item
            _DrawerMenuItem(
              icon: Icons.chat_bubble_outline_rounded,
              title: 'OPIc 실전 문장',
              subtitle: '주제별 핵심 표현 150',
              isSelected: _viewModel.mode == VocabMode.opicPhrase &&
                  !_viewModel.isFavoriteMode,
              onTap: () {
                _viewModel.setMode(VocabMode.opicPhrase);
                Navigator.pop(context);
              },
            ),

            const Divider(indent: 16, endIndent: 16),

            // 별표 다시보기
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
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
                  _viewModel.enterFavoriteMode();
                },
              ),
            ),

            const Divider(indent: 16, endIndent: 16),

            // Auto-speak toggle
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(
                leading: Icon(
                  Icons.volume_up_rounded,
                  color: colorScheme.onSurfaceVariant,
                ),
                title: const Text('자동 발음'),
                subtitle: Text(
                  _viewModel.autoSpeak ? '켜짐' : '꺼짐',
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                trailing: Switch(
                  value: _viewModel.autoSpeak,
                  onChanged: (_) {
                    _viewModel.toggleAutoSpeak();
                    setState(() {});
                  },
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            // 퀴즈 모드 toggle
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(
                leading: Icon(
                  Icons.quiz_rounded,
                  color: colorScheme.onSurfaceVariant,
                ),
                title: const Text('퀴즈 모드'),
                subtitle: Text(
                  _viewModel.quizModeEnabled
                      ? '세트 완료 후 퀴즈 (OPIc 중급)'
                      : '꺼짐',
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                trailing: Switch(
                  value: _viewModel.quizModeEnabled,
                  onChanged: (_) => _viewModel.toggleQuizMode(),
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
          color: isSelected
              ? colorScheme.primary
              : colorScheme.onSurfaceVariant,
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
                  ? colorScheme.outline.withValues(alpha: 0.4)
                  : colorScheme.primary,
              side: BorderSide(
                color: isFirstWord
                    ? colorScheme.outline.withValues(alpha: 0.2)
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
