# Plan: 단어 예문 표시 기능 (word-examples)

**Created**: 2026-04-20  
**Feature**: word-examples  
**Level**: Dynamic

---

## Executive Summary

| 항목 | 내용 |
|------|------|
| Problem | 단어카드에 단어/발음/뜻만 있어 문맥 이해가 어렵다 |
| Solution | 카드 하단에 일상 예문 3개(영어+한국어)를 항상 표시 |
| Function UX Effect | 스크롤로 예문 확인 → 문맥 학습 → 암기 효율 향상 |
| Core Value | 단순 암기에서 문장 이해 기반 학습으로 전환 |

---

## Context Anchor

| 항목 | 내용 |
|------|------|
| WHY | 단어만 외워서는 실제 사용 능력이 부족함 |
| WHO | OPIc/TOEIC 준비 학습자 |
| RISK | 예문 데이터 양이 많아 앱 용량 증가 가능 |
| SUCCESS | 모든 단어에 3개 예문 표시, 자연스러운 일상 문장 |
| SCOPE | OPIc Beginner A 먼저, 이후 나머지 레벨 순차 추가 |

---

## 1. 요구사항

### 기능 요구사항
- [ ] 각 단어별 예문 3개 표시
- [ ] 예문은 영어 문장 → 한국어 해석 순서로 표시
- [ ] 카드 영역 하단에 항상 표시 (스크롤 가능)
- [ ] 일상생활에서 자연스럽게 쓰이는 문장

### 데이터 요구사항
- [ ] OPIc Beginner A (~250단어) 예문 데이터 생성
- [ ] 추후 Beginner B, Intermediate A/B, Advanced A/B 순차 추가

### 기술 요구사항
- [ ] `WordExample` 모델 클래스 신규 생성
- [ ] `Word` 모델에 `examples` 필드 추가 (optional, 기본값 빈 리스트)
- [ ] 예문 데이터 파일: `lib/data/opic_examples_beginner_a.dart`
- [ ] `WordCardView` UI 업데이트 (예문 섹션 추가)

---

## 2. 기술 설계

### 데이터 구조
```dart
// lib/models/word_example.dart
class WordExample {
  final String english;
  final String korean;
}

// lib/models/word.dart (확장)
class Word {
  // 기존 필드 유지
  final List<WordExample> examples; // 추가 (기본값: [])
}

// lib/data/opic_examples_beginner_a.dart
class OPIcBeginnerAExamples {
  static const Map<String, List<WordExample>> data = { ... };
}
```

### UI 변경
- `WordCardView` 카드 하단에 예문 섹션 추가
- 구분선 + "예문" 레이블
- 각 예문: 영어(굵게) + 한국어(보조색)

---

## 3. 구현 순서

1. `WordExample` 모델 생성
2. `Word` 모델 examples 필드 추가
3. `opic_examples_beginner_a.dart` 데이터 생성
4. `WordCardView` UI 업데이트
5. 기존 word data에 examples 연결 (선택: 별도 Map 조회 방식)
