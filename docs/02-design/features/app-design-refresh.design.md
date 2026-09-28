# Design: app-design-refresh (시안 B · 컬러 헤더)

> 작성일: 2026-07-05 · 상태: Do 진행
> 선택 배경: 시안 A(미니멀 클린) / B(컬러 헤더) / C(다크 포커스) 중 사용자가 B 선택

## 1. 개요

상단 영역(앱바 + 레벨 탭 + 진행 정보 + 진행 바)을 모드 색상(`colorScheme.primary`)으로
채우고, 흰 학습 카드가 헤더 하단에 살짝 겹쳐 보이는 구조로 전환한다.
모드별 테마(TOEIC 인디고 / OPIc 스카이블루 / 실전 문장 틸)는 기존
`_buildModeTheme`을 그대로 활용하므로 헤더 색은 모드 전환 시 자동으로 바뀐다.

## 2. 디자인 토큰 (Design Anchor)

| 요소 | 값 |
|------|-----|
| 헤더 배경 | `colorScheme.primary` (모드별 자동 전환) |
| 헤더 텍스트/아이콘 | `colorScheme.onPrimary` (보조 텍스트 opacity 0.75) |
| 레벨 탭 컨테이너 | `onPrimary` 15% 알약(radius 999) |
| 레벨 탭 선택 | `onPrimary` 채움 + `primary` 텍스트 |
| 진행 바 | 트랙 `onPrimary` 25% / 값 `onPrimary` |
| 카드 | radius 24, shadow 10% blur 24 offset(0,6) |
| 예문 박스 | `primaryContainer` 40% 채움, radius 14, 좌측 액센트 제거 |
| 오버랩 | 콘텐츠 영역 상단 20px 컬러 스트립 (Stack) |

## 3. 변경 파일

- `lib/views/home_screen.dart` — 컬러 헤더 구조, SafeArea 재배치,
  `AnnotatedRegion<SystemUiOverlayStyle>`(상태바 밝은 아이콘), 토픽 칩 재스타일,
  오버랩 스트립(별표 빈 상태에서는 숨김)
- `lib/views/level_tab_bar.dart` — 컬러 배경용 알약 탭으로 전면 재작성
- `lib/views/word_card_view.dart` — 카드 radius/shadow 정돈, 예문 박스 채움형 전환
- `lib/views/phrase_card_view.dart` — 카드 radius/shadow 동일 정돈

## 4. 검증 기준

- [x] TOEIC(인디고)/OPIc(스카이블루)/실전 문장(틸) 모드 전환 시 헤더 색 변경 — 에뮬레이터 스크린샷 확인
- [ ] 별표 모드(뒤로가기 + 금색 별) 헤더 정상 표시, 빈 상태에서 스트립 없음 — 코드 반영, 화면 미확인
- [x] 진행 바·레벨 탭·토픽 칩 가독성 (컬러 배경 위) — 에뮬레이터 스크린샷 확인
- [x] flutter analyze 에러 0건 (기존 withOpacity deprecation info만 존재)

## 5. 구현 중 발견/수정한 이슈

- 토픽 칩이 M3 ChoiceChip 기본 배경 + State context(모드 테마 미적용) 사용으로
  컬러 헤더 위에서 라벨이 안 보이고 색이 어긋남
  → 레벨 탭과 동일한 커스텀 알약(GestureDetector + AnimatedContainer)으로 교체,
  `_buildTopicChips(BuildContext context)`로 모드 테마 context 전달
