import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../viewmodels/word_viewmodel.dart';
import '../models/word_example.dart';
import '../data/opic_phrases_data.dart';
import '../services/examples_repository.dart';
import 'level_tab_bar.dart';
import 'word_card_view.dart';
import 'phrase_card_view.dart';
import 'completion_view.dart';
import 'quiz_screen.dart';
import 'app_drawer.dart';
import 'navigation_buttons.dart';
import 'sliding_card_switcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WordViewModel _viewModel = WordViewModel();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ExamplesRepository _examples = const ExamplesRepository();

  // 카드 전환 애니메이션 방향: 1 = 다음, -1 = 이전
  int _slideDirection = 1;

  void _goNext() {
    _slideDirection = 1;
    _isPhraseMode ? _viewModel.nextPhrase() : _viewModel.nextWord();
  }

  void _goPrevious() {
    _slideDirection = -1;
    _isPhraseMode ? _viewModel.previousPhrase() : _viewModel.previousWord();
  }

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
      return QuizScreen(viewModel: _viewModel, quiz: quiz);
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
        drawer: AppDrawer(viewModel: _viewModel),
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
                        onSelectLevel: (level) => _viewModel.selectLevel(level),
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
                      child: Container(height: 20, color: colorScheme.primary),
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
                                        _goNext();
                                      } else if (velocity > 300 &&
                                          !_viewModel.isFirstPhrase) {
                                        _goPrevious();
                                      }
                                    },
                                    child: SlidingCardSwitcher(
                                      cardId: _viewModel.currentPhrase!.english,
                                      direction: _slideDirection,
                                      child: PhraseCardView(
                                        phrase: _viewModel.currentPhrase!,
                                        phraseNumber:
                                            _viewModel.currentPhraseNumber,
                                        totalPhrases:
                                            _viewModel.totalPhrasesInTopic,
                                        onSpeak: () => _viewModel.speak(
                                            _viewModel.currentPhrase!.english),
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink())
                        : _viewModel.isFavoriteMode &&
                                _viewModel.currentLevelWords.isEmpty
                            ? Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 32),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.star_border_rounded,
                                        size: 64,
                                        color: colorScheme.outline
                                            .withValues(alpha: 0.3),
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
                                    onReview: () =>
                                        _viewModel.reviewCurrentSet(),
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
                                            _goNext();
                                          } else if (velocity > 300 &&
                                              !_viewModel.isFirstWord) {
                                            _goPrevious();
                                          }
                                        },
                                        child: SlidingCardSwitcher(
                                          cardId:
                                              '${_viewModel.currentSetIndex}:'
                                              '${_viewModel.currentWord!.english}',
                                          direction: _slideDirection,
                                          child: WordCardView(
                                            word: _viewModel.currentWord!,
                                            wordNumberInSet: _viewModel
                                                .currentWordNumberInSet,
                                            totalInSet:
                                                _viewModel.currentSet.length,
                                            onSpeak: () => _viewModel.speak(
                                              _viewModel.currentWord!.english,
                                              phonetic: _viewModel
                                                  .currentWord!.phonetic,
                                            ),
                                            isFavorite: _viewModel.isFavorite(
                                                _viewModel
                                                    .currentWord!.english),
                                            onToggleFavorite: () => _viewModel
                                                .toggleFavorite(_viewModel
                                                    .currentWord!.english),
                                            examples: _getExamples(_viewModel
                                                .currentWord!.english),
                                          ),
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
                  child: NavigationButtons(
                    isFirstWord: _isPhraseMode
                        ? _viewModel.isFirstPhrase
                        : _viewModel.isFirstWord,
                    onPrevious: _goPrevious,
                    onNext: _goNext,
                  ),
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
                    fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
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
}
