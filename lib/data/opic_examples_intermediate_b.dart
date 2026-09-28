import '../models/word_example.dart';

/// OPIc Intermediate B — 예문 데이터 (단어별 3개)
/// 진행: 1~243 (reframe ~ surpass) — 완료
class OPIcIntermediateBExamples {
  static const Map<String, List<WordExample>> data = {

    // ── 1~50 ────────────────────────────────────────────────
    'reframe': [
      WordExample(english: 'Try to reframe failure as a valuable learning opportunity rather than a setback.', korean: '실패를 좌절이 아닌 귀중한 학습 기회로 재구성하려고 해봐.'),
      WordExample(english: 'She reframed the challenge as a chance to innovate and grew stronger for it.', korean: '그녀는 그 도전을 혁신의 기회로 재구성했고 그 덕분에 더 강해졌어.'),
      WordExample(english: 'Reframing a problem from a different angle often reveals solutions that were invisible before.', korean: '다른 각도에서 문제를 재구성하면 이전에는 보이지 않았던 해결책이 드러나는 경우가 많아.'),
    ],
    'reinforce': [
      WordExample(english: 'Regular praise and recognition reinforce positive behaviour in any team.', korean: '정기적인 칭찬과 인정이 모든 팀에서 긍정적인 행동을 강화해.'),
      WordExample(english: 'The training was designed to reinforce the core principles introduced in the workshop.', korean: '그 교육은 워크숍에서 소개된 핵심 원칙들을 강화하도록 설계됐어.'),
      WordExample(english: 'Data from the pilot study reinforced the conclusion that early intervention is most effective.', korean: '파일럿 연구의 데이터가 조기 개입이 가장 효과적이라는 결론을 강화했어.'),
    ],
    'relevant': [
      WordExample(english: 'Make sure your examples are directly relevant to the question being asked.', korean: '예시가 묻는 질문과 직접적으로 관련이 있는지 확인해.'),
      WordExample(english: 'Staying relevant in a rapidly changing industry requires continuous learning.', korean: '빠르게 변화하는 업계에서 관련성을 유지하려면 지속적인 학습이 필요해.'),
      WordExample(english: 'She curated only the most relevant information to keep the report concise.', korean: '그녀는 보고서를 간결하게 유지하기 위해 가장 관련성 높은 정보만 선별했어.'),
    ],
    'remedy': [
      WordExample(english: 'The management team sought a long-term remedy rather than a quick fix.', korean: '경영진은 임시방편이 아닌 장기적인 해결책을 모색했어.'),
      WordExample(english: 'Prevention is always a better remedy than trying to fix problems after they arise.', korean: '문제가 발생한 후에 해결하려는 것보다 예방이 항상 더 좋은 해결책이야.'),
      WordExample(english: 'What remedy do you propose for the persistent decline in team morale?', korean: '팀 사기의 지속적인 하락에 어떤 해결책을 제안해?'),
    ],
    'resonate': [
      WordExample(english: 'The campaign\'s message resonated deeply with a broad and diverse audience.', korean: '그 캠페인의 메시지가 폭넓고 다양한 청중에게 깊이 공감을 불러일으켰어.'),
      WordExample(english: 'Her story resonated with me because I\'ve faced very similar challenges myself.', korean: '그녀의 이야기가 나에게 공감됐어, 나도 매우 비슷한 도전을 직접 겪었거든.'),
      WordExample(english: 'A brand that truly resonates with its audience creates loyal, long-term customers.', korean: '청중에게 진정으로 공명하는 브랜드는 충성스럽고 장기적인 고객을 만들어.'),
    ],
    'robust': [
      WordExample(english: 'The organisation needs a more robust system for handling customer complaints.', korean: '조직은 고객 불만을 처리하기 위한 더 강력한 시스템이 필요해.'),
      WordExample(english: 'A robust strategy can withstand uncertainty and adapt to unexpected disruptions.', korean: '강력한 전략은 불확실성을 견디고 예상치 못한 혼란에 적응할 수 있어.'),
      WordExample(english: 'The robust data clearly supports the case for investing in further R&D.', korean: '강력한 데이터가 추가적인 연구개발 투자를 위한 근거를 명확하게 뒷받침해.'),
    ],
    'scale': [
      WordExample(english: 'The startup is ready to scale — the model has been proven and demand is there.', korean: '스타트업은 확장할 준비가 됐어, 모델이 검증됐고 수요도 있거든.'),
      WordExample(english: 'Scaling a business requires not just growth but the right systems to support it.', korean: '사업을 확장하려면 성장만이 아니라 그것을 지원할 올바른 시스템도 필요해.'),
      WordExample(english: 'The initiative was initially small but quickly scaled across the entire organisation.', korean: '그 계획은 처음에는 작았지만 빠르게 조직 전체로 확대됐어.'),
    ],
    'scrutiny': [
      WordExample(english: 'The decision faced intense public scrutiny following the media reports.', korean: '그 결정은 미디어 보도 이후 강렬한 대중의 면밀한 검토에 직면했어.'),
      WordExample(english: 'All financial transactions are subject to rigorous scrutiny by the compliance team.', korean: '모든 재무 거래는 컴플라이언스 팀의 엄격한 검토를 받아.'),
      WordExample(english: 'Holding power to scrutiny is a fundamental function of a free press.', korean: '권력을 면밀히 검토하는 것이 자유 언론의 근본적인 기능이야.'),
    ],
    'seamless': [
      WordExample(english: 'The goal is to create a seamless customer experience from first contact to delivery.', korean: '목표는 첫 접촉부터 납품까지 원활한 고객 경험을 만드는 거야.'),
      WordExample(english: 'The transition between the two systems was remarkably seamless and disruption-free.', korean: '두 시스템 간의 전환은 놀랍도록 원활하고 방해 없이 이루어졌어.'),
      WordExample(english: 'A seamless integration of remote and in-office workers requires intentional effort.', korean: '원격 근무자와 사무실 근무자의 원활한 통합은 의도적인 노력이 필요해.'),
    ],
    'sequence': [
      WordExample(english: 'Follow the correct sequence of steps to ensure the procedure is done safely.', korean: '절차가 안전하게 수행되도록 올바른 순서를 따라.'),
      WordExample(english: 'The sequence of events leading to the crisis was complex and hard to predict.', korean: '위기로 이어진 일련의 사건들은 복잡하고 예측하기 어려웠어.'),
      WordExample(english: 'Planning the sequence of product launches carefully can maximise market impact.', korean: '제품 출시 순서를 신중하게 계획하면 시장 영향력을 극대화할 수 있어.'),
    ],
    'shift': [
      WordExample(english: 'There has been a significant shift in consumer expectations over the past decade.', korean: '지난 10년간 소비자 기대치에 상당한 변화가 있었어.'),
      WordExample(english: 'A mindset shift is often the first and most difficult step toward meaningful change.', korean: '마인드셋의 전환이 종종 의미 있는 변화를 향한 첫 번째이자 가장 어려운 단계야.'),
      WordExample(english: 'The industry has seen a dramatic shift from traditional to digital business models.', korean: '업계는 전통적 비즈니스 모델에서 디지털 비즈니스 모델로의 극적인 전환을 목격했어.'),
    ],
    'simulate': [
      WordExample(english: 'The training programme simulates real-world scenarios to prepare staff for any situation.', korean: '교육 프로그램은 직원들이 어떤 상황에도 대비하도록 실제 시나리오를 시뮬레이션해.'),
      WordExample(english: 'The software can simulate market conditions to help test different investment strategies.', korean: '그 소프트웨어는 다양한 투자 전략을 테스트하는 데 도움이 되도록 시장 조건을 시뮬레이션할 수 있어.'),
      WordExample(english: 'Running simulations before the actual launch helped us identify and fix critical flaws.', korean: '실제 출시 전에 시뮬레이션을 실행하는 게 중요한 결함을 식별하고 수정하는 데 도움이 됐어.'),
    ],
    'solidarity': [
      WordExample(english: 'The team showed remarkable solidarity when one of their members faced a personal crisis.', korean: '팀원 중 한 명이 개인적인 위기에 직면했을 때 팀은 놀라운 연대감을 보여줬어.'),
      WordExample(english: 'Acts of solidarity — however small — can make a profound difference to those in need.', korean: '아무리 작더라도 연대의 행동은 도움이 필요한 사람들에게 깊은 변화를 만들어낼 수 있어.'),
      WordExample(english: 'Building solidarity across departments is key to creating a truly unified organisation.', korean: '부서 전반에 걸쳐 연대를 구축하는 게 진정으로 통합된 조직을 만드는 핵심이야.'),
    ],
    'sovereignty': [
      WordExample(english: 'Data sovereignty has become a major concern for companies operating internationally.', korean: '데이터 주권이 국제적으로 운영하는 기업들의 주요 관심사가 됐어.'),
      WordExample(english: 'National sovereignty must be respected in any international trade negotiation.', korean: '모든 국제 무역 협상에서 국가 주권이 존중돼야 해.'),
      WordExample(english: 'Digital sovereignty refers to a country\'s control over its own digital infrastructure.', korean: '디지털 주권은 국가의 자국 디지털 인프라에 대한 통제를 말해.'),
    ],
    'speculation': [
      WordExample(english: 'There has been widespread speculation about the company\'s future direction.', korean: '회사의 미래 방향에 대한 광범위한 추측이 있었어.'),
      WordExample(english: 'Avoid making decisions based on speculation rather than solid evidence.', korean: '확실한 증거가 아닌 추측을 바탕으로 결정을 내리는 것을 피해.'),
      WordExample(english: 'The media\'s speculation proved largely unfounded when the official announcement came.', korean: '공식 발표가 나왔을 때 언론의 추측은 대부분 근거 없는 것으로 판명됐어.'),
    ],
    'spontaneous': [
      WordExample(english: 'The best team bonding moments are often spontaneous rather than carefully planned.', korean: '최고의 팀 유대 순간들은 종종 신중하게 계획된 것보다 즉흥적이야.'),
      WordExample(english: 'A spontaneous decision to take a different route led to an unexpected discovery.', korean: '다른 경로를 택하는 즉흥적인 결정이 예상치 못한 발견으로 이어졌어.'),
      WordExample(english: 'Her spontaneous laughter and warmth made her instantly likable to everyone she met.', korean: '그녀의 즉흥적인 웃음과 따뜻함이 그녀가 만나는 모든 사람에게 즉시 호감을 줬어.'),
    ],
    'stagnant': [
      WordExample(english: 'A stagnant organisation loses its best people — talent seeks growth and opportunity.', korean: '정체된 조직은 최고의 인재를 잃어, 재능은 성장과 기회를 찾거든.'),
      WordExample(english: 'The market has been stagnant for two years, and a new strategy is urgently needed.', korean: '시장이 2년간 정체돼 있어서 새로운 전략이 시급하게 필요해.'),
      WordExample(english: 'Complacency is the main reason why once-successful companies become stagnant.', korean: '자기만족이 한때 성공했던 기업들이 정체되는 주된 이유야.'),
    ],
    'stance': [
      WordExample(english: 'The company took a strong public stance against all forms of workplace discrimination.', korean: '회사는 모든 형태의 직장 내 차별에 반대하는 강력한 공개 입장을 취했어.'),
      WordExample(english: 'Her stance on the issue shifted considerably after reviewing the new evidence.', korean: '새로운 증거를 검토한 후 그 문제에 대한 그녀의 입장이 상당히 바뀌었어.'),
      WordExample(english: 'Taking a clear stance builds credibility, even if some people disagree.', korean: '명확한 입장을 취하는 게 신뢰성을 쌓아, 일부 사람들이 동의하지 않더라도.'),
    ],
    'stringent': [
      WordExample(english: 'The industry operates under stringent safety regulations to protect workers.', korean: '그 업계는 근로자를 보호하기 위한 엄격한 안전 규정 하에 운영돼.'),
      WordExample(english: 'Stringent quality controls ensure every product meets the highest standards before shipping.', korean: '엄격한 품질 관리가 모든 제품이 출하 전에 최고 수준을 충족하도록 보장해.'),
      WordExample(english: 'The new budget included more stringent criteria for approving major expenditures.', korean: '새 예산에는 주요 지출을 승인하는 더 엄격한 기준이 포함됐어.'),
    ],
    'subsequent': [
      WordExample(english: 'The initial meeting went well, and subsequent discussions led to a formal agreement.', korean: '첫 미팅이 잘 됐고, 이후 논의가 공식 합의로 이어졌어.'),
      WordExample(english: 'Subsequent research confirmed and expanded on the findings of the original study.', korean: '이후 연구가 원래 연구의 결과를 확인하고 확대했어.'),
      WordExample(english: 'The error was caught and corrected in all subsequent versions of the document.', korean: '오류가 발견됐고 이후 모든 버전의 문서에서 수정됐어.'),
    ],
    'subtle': [
      WordExample(english: 'There\'s a subtle but important difference between confidence and arrogance.', korean: '자신감과 오만함 사이에는 미묘하지만 중요한 차이가 있어.'),
      WordExample(english: 'The design changes were subtle, but they made a significant impact on user experience.', korean: '디자인 변경은 미묘했지만 사용자 경험에 상당한 영향을 미쳤어.'),
      WordExample(english: 'Her subtle humour made even difficult topics more approachable and engaging.', korean: '그녀의 미묘한 유머가 어려운 주제도 더 접근하기 쉽고 흥미롭게 만들었어.'),
    ],
    'tacit': [
      WordExample(english: 'There was a tacit agreement between the two colleagues to never discuss the incident.', korean: '두 동료 사이에는 그 사건을 절대 논의하지 않겠다는 암묵적인 합의가 있었어.'),
      WordExample(english: 'Much of an expert\'s knowledge is tacit — gained through years of experience, not reading.', korean: '전문가의 지식 중 상당 부분은 암묵적이야, 독서가 아닌 수년간의 경험을 통해 얻은 것이거든.'),
      WordExample(english: 'The team operated with tacit rules that were never written down but always followed.', korean: '팀은 문서화된 적은 없지만 항상 따르는 암묵적인 규칙으로 운영됐어.'),
    ],
    'tolerate': [
      WordExample(english: 'A healthy workplace culture does not tolerate bullying or harassment of any kind.', korean: '건강한 직장 문화는 어떤 종류의 괴롭힘이나 괴롭힘도 용납하지 않아.'),
      WordExample(english: 'Effective leaders tolerate calculated risks but not reckless behaviour.', korean: '효과적인 리더는 계산된 위험은 용납하지만 무모한 행동은 그렇지 않아.'),
      WordExample(english: 'She tolerates ambiguity well and remains calm even when the path ahead is unclear.', korean: '그녀는 모호함을 잘 견뎌내고 앞길이 불분명할 때도 침착함을 유지해.'),
    ],
    'transaction': [
      WordExample(english: 'Every financial transaction must be recorded and auditable for compliance purposes.', korean: '모든 재무 거래는 컴플라이언스 목적으로 기록되고 감사 가능해야 해.'),
      WordExample(english: 'Effective leadership is about building relationships, not just completing transactions.', korean: '효과적인 리더십은 단순히 거래를 완료하는 것이 아닌 관계를 구축하는 것에 관한 거야.'),
      WordExample(english: 'The platform enables secure transactions between buyers and sellers worldwide.', korean: '그 플랫폼은 전 세계 구매자와 판매자 간의 안전한 거래를 가능하게 해.'),
    ],
    'transcend': [
      WordExample(english: 'Truly great work transcends its category and speaks to something universally human.', korean: '진정으로 훌륭한 작품은 그 범주를 초월하여 보편적으로 인간적인 무언가를 말해.'),
      WordExample(english: 'Their mission is to transcend cultural and national boundaries through shared values.', korean: '그들의 사명은 공유된 가치를 통해 문화적, 국가적 경계를 초월하는 거야.'),
      WordExample(english: 'Great mentors help you transcend your current limitations and see your true potential.', korean: '훌륭한 멘토는 당신이 현재의 한계를 초월하고 진정한 잠재력을 보도록 도와줘.'),
    ],
    'transform': [
      WordExample(english: 'Digital technology has the power to completely transform how industries operate.', korean: '디지털 기술은 업계의 운영 방식을 완전히 변혁할 수 있는 힘이 있어.'),
      WordExample(english: 'The mentorship programme transformed her career in ways she hadn\'t imagined possible.', korean: '그 멘토십 프로그램이 그녀가 가능하다고 상상하지 못했던 방식으로 커리어를 변혁했어.'),
      WordExample(english: 'To transform an organisation, you must start with transforming its culture.', korean: '조직을 변혁하려면 문화를 변혁하는 것에서 시작해야 해.'),
    ],
    'undermine': [
      WordExample(english: 'Inconsistent messaging can severely undermine trust in a leadership team.', korean: '일관성 없는 메시지가 리더십 팀에 대한 신뢰를 심각하게 훼손할 수 있어.'),
      WordExample(english: 'Micromanagement undermines employee confidence and reduces creative initiative.', korean: '지나친 관리가 직원의 자신감을 훼손하고 창의적 주도성을 줄여.'),
      WordExample(english: 'Don\'t let others undermine your progress with negativity or self-doubt.', korean: '다른 사람들이 부정성이나 자기 의심으로 당신의 발전을 훼손하게 두지 마.'),
    ],
    'unify': [
      WordExample(english: 'The new brand identity was designed to unify all divisions under one coherent vision.', korean: '새로운 브랜드 정체성은 모든 사업부를 하나의 일관된 비전 아래 통합하도록 설계됐어.'),
      WordExample(english: 'A shared purpose can unify even the most diverse and distributed teams.', korean: '공유된 목적은 가장 다양하고 분산된 팀도 하나로 묶을 수 있어.'),
      WordExample(english: 'The crisis, paradoxically, served to unify the organisation behind a common goal.', korean: '그 위기는 역설적으로 공통 목표 아래 조직을 하나로 묶는 역할을 했어.'),
    ],
    'unprecedented': [
      WordExample(english: 'The pandemic created unprecedented challenges for businesses of every size.', korean: '팬데믹은 모든 규모의 기업들에게 전례 없는 도전을 만들어냈어.'),
      WordExample(english: 'She achieved unprecedented results in just her first year in the role.', korean: '그녀는 그 역할을 맡은 첫 해에 전례 없는 결과를 달성했어.'),
      WordExample(english: 'The technology offers unprecedented levels of personalisation to individual users.', korean: '그 기술은 개별 사용자에게 전례 없는 수준의 개인화를 제공해.'),
    ],
    'upheaval': [
      WordExample(english: 'The merger caused significant upheaval across the entire workforce.', korean: '합병이 전체 인력에 상당한 격변을 일으켰어.'),
      WordExample(english: 'Periods of upheaval can be the catalyst for profound and lasting positive change.', korean: '격변의 시기가 심오하고 지속적인 긍정적 변화의 촉매가 될 수 있어.'),
      WordExample(english: 'She navigated the organisational upheaval with remarkable calm and clarity.', korean: '그녀는 조직의 격변을 놀라운 침착함과 명확성으로 헤쳐나갔어.'),
    ],
    'utilize': [
      WordExample(english: 'We should fully utilize all available resources before requesting additional budget.', korean: '추가 예산을 요청하기 전에 가용 자원을 모두 최대한 활용해야 해.'),
      WordExample(english: 'She utilized her diverse background to bring unique perspectives to every project.', korean: '그녀는 다양한 배경을 활용해 모든 프로젝트에 독특한 시각을 가져왔어.'),
      WordExample(english: 'Modern companies must utilize data effectively to stay ahead of the competition.', korean: '현대 기업들은 경쟁에서 앞서나가기 위해 데이터를 효과적으로 활용해야 해.'),
    ],
    'viable': [
      WordExample(english: 'Is this approach actually viable given our current resources and timeframe?', korean: '현재 자원과 시간 범위를 고려했을 때 이 접근이 실제로 실현 가능해?'),
      WordExample(english: 'We explored several options and only one proved to be a truly viable solution.', korean: '여러 선택지를 탐색했는데 하나만 진정으로 실행 가능한 해결책으로 드러났어.'),
      WordExample(english: 'The business model became viable once the team found a scalable revenue stream.', korean: '팀이 확장 가능한 수익원을 찾은 후에 비즈니스 모델이 실행 가능해졌어.'),
    ],
    'withstand': [
      WordExample(english: 'A well-built strategy can withstand market volatility and unexpected disruptions.', korean: '잘 구축된 전략은 시장 변동성과 예상치 못한 혼란을 견딜 수 있어.'),
      WordExample(english: 'Great leaders withstand enormous pressure without losing their sense of direction.', korean: '훌륭한 리더들은 방향감각을 잃지 않고 엄청난 압박을 견뎌내.'),
      WordExample(english: 'The new packaging was designed to withstand rough handling during international shipping.', korean: '새 포장재는 국제 배송 중의 거친 취급을 견디도록 설계됐어.'),
    ],
    'advocate for': [
      WordExample(english: 'She has consistently advocated for greater transparency in corporate governance.', korean: '그녀는 기업 지배구조의 더 큰 투명성을 위해 꾸준히 주장해왔어.'),
      WordExample(english: 'It\'s important to advocate for yourself in salary discussions rather than waiting to be offered.', korean: '제안을 기다리는 것보다 급여 논의에서 스스로를 위해 주장하는 게 중요해.'),
      WordExample(english: 'Leaders who advocate for their teams build deep trust and strong loyalty.', korean: '팀을 위해 주장하는 리더들은 깊은 신뢰와 강한 충성심을 쌓아.'),
    ],
    'be attributed to': [
      WordExample(english: 'The project\'s success can largely be attributed to the team\'s exceptional dedication.', korean: '프로젝트의 성공은 팀의 탁월한 헌신 덕분이라 할 수 있어.'),
      WordExample(english: 'The high turnover rate can be attributed to a lack of clear career development paths.', korean: '높은 이직률은 명확한 커리어 개발 경로의 부재 때문이라 볼 수 있어.'),
      WordExample(english: 'The breakthrough was attributed to years of incremental research that went largely unnoticed.', korean: '그 획기적 발전은 주로 주목받지 못한 수년간의 점진적인 연구 덕분이었어.'),
    ],
    'bring about': [
      WordExample(english: 'Strong leadership is needed to bring about meaningful and lasting organisational change.', korean: '의미 있고 지속적인 조직 변화를 가져오려면 강력한 리더십이 필요해.'),
      WordExample(english: 'What steps would you take to bring about greater collaboration across teams?', korean: '팀 간 더 큰 협력을 이루기 위해 어떤 조치를 취할 거야?'),
      WordExample(english: 'The new policy was specifically designed to bring about fairer outcomes for everyone.', korean: '새 정책은 모든 사람에게 더 공정한 결과를 가져오기 위해 특별히 설계됐어.'),
    ],
    'call into question': [
      WordExample(english: 'The new findings call into question some of the most widely held assumptions in the field.', korean: '새로운 발견들이 그 분야에서 가장 널리 통용되는 일부 가정들에 의문을 제기해.'),
      WordExample(english: 'Her absence from the key meeting called into question her commitment to the project.', korean: '핵심 회의에서의 그녀의 부재가 프로젝트에 대한 그녀의 헌신에 의문을 제기했어.'),
      WordExample(english: 'When results contradict your hypothesis, it\'s time to call your assumptions into question.', korean: '결과가 가설과 모순될 때는 가정에 의문을 제기할 때야.'),
    ],
    'contribute to': [
      WordExample(english: 'Every team member has the opportunity to contribute to the overall success.', korean: '모든 팀원이 전체적인 성공에 기여할 기회가 있어.'),
      WordExample(english: 'Poor time management can contribute to stress and reduced productivity.', korean: '나쁜 시간 관리가 스트레스와 생산성 저하에 기여할 수 있어.'),
      WordExample(english: 'She wanted to contribute to something larger than herself — that\'s why she joined the cause.', korean: '그녀는 자신보다 더 큰 무언가에 기여하고 싶었어, 그게 그녀가 그 대의에 합류한 이유야.'),
    ],
    'exert influence on': [
      WordExample(english: 'Leaders exert influence on their teams through actions far more than through words.', korean: '리더들은 말보다 행동을 통해 훨씬 더 많이 팀에 영향을 미쳐.'),
      WordExample(english: 'Culture exerts enormous influence on how people make decisions and solve problems.', korean: '문화는 사람들이 결정을 내리고 문제를 해결하는 방식에 엄청난 영향을 미쳐.'),
      WordExample(english: 'She has the ability to exert positive influence on even the most resistant colleagues.', korean: '그녀는 가장 저항이 강한 동료들에게도 긍정적인 영향을 미칠 수 있는 능력이 있어.'),
    ],
    'give rise to': [
      WordExample(english: 'Rapid urbanisation has given rise to a new set of social and economic challenges.', korean: '빠른 도시화가 새로운 사회적, 경제적 도전들을 야기했어.'),
      WordExample(english: 'The unresolved tension between the two teams gave rise to serious communication breakdowns.', korean: '두 팀 간의 해결되지 않은 긴장이 심각한 소통 단절을 야기했어.'),
      WordExample(english: 'Technological disruption has given rise to entirely new industries and job categories.', korean: '기술적 혼란이 완전히 새로운 산업과 직업 카테고리를 야기했어.'),
    ],
    'have implications for': [
      WordExample(english: 'This finding has significant implications for how we approach talent development.', korean: '이 발견은 우리가 인재 개발에 접근하는 방식에 중요한 함의를 가지고 있어.'),
      WordExample(english: 'The regulatory change will have implications for every company operating in this sector.', korean: '규제 변화는 이 분야에서 운영하는 모든 회사에 함의를 가질 거야.'),
      WordExample(english: 'Any decision at this level will have implications for the entire organisation.', korean: '이 수준의 어떤 결정도 전체 조직에 함의를 가질 거야.'),
    ],
    'in retrospect': [
      WordExample(english: 'In retrospect, taking that risk was the best decision I ever made in my career.', korean: '돌이켜보면 그 위험을 감수한 것이 내 커리어에서 내린 최고의 결정이었어.'),
      WordExample(english: 'In retrospect, earlier communication would have prevented most of the misunderstandings.', korean: '돌이켜보면 더 이른 소통이 대부분의 오해를 방지했을 거야.'),
      WordExample(english: 'In retrospect, the signs of trouble were there — we just weren\'t paying attention.', korean: '돌이켜보면 문제의 징조는 있었어, 우리가 그냥 주의를 기울이지 않고 있었던 거야.'),
    ],
    'lay the groundwork': [
      WordExample(english: 'The pilot project helped lay the groundwork for a much larger rollout next year.', korean: '파일럿 프로젝트가 내년의 훨씬 더 큰 출시를 위한 기반을 마련하는 데 도움이 됐어.'),
      WordExample(english: 'Years of networking and skill-building had laid the groundwork for her sudden rise.', korean: '수년간의 네트워킹과 기술 구축이 그녀의 갑작스러운 부상을 위한 기반을 마련했어.'),
      WordExample(english: 'Good planning at the start lays the groundwork for smooth execution later on.', korean: '초반의 좋은 계획이 이후의 원활한 실행을 위한 기반을 마련해.'),
    ],
    'on the premise that': [
      WordExample(english: 'The strategy was built on the premise that customer loyalty drives sustainable growth.', korean: '그 전략은 고객 충성도가 지속 가능한 성장을 이끈다는 전제를 바탕으로 세워졌어.'),
      WordExample(english: 'We proceeded on the premise that the data provided was accurate and complete.', korean: '우리는 제공된 데이터가 정확하고 완전하다는 전제 하에 진행했어.'),
      WordExample(english: 'She made the decision on the premise that transparency would build long-term trust.', korean: '그녀는 투명성이 장기적인 신뢰를 구축한다는 전제 하에 결정을 내렸어.'),
    ],
    'put into perspective': [
      WordExample(english: 'Travelling to less affluent regions really puts your own problems into perspective.', korean: '덜 풍요로운 지역을 여행하면 자신의 문제를 제대로 된 시각으로 보게 돼.'),
      WordExample(english: 'It helps to put challenges into perspective by focusing on what you can control.', korean: '통제할 수 있는 것에 집중하면 도전을 올바른 시각으로 보는 데 도움이 돼.'),
      WordExample(english: 'The mentor helped her put the setback into perspective and see the bigger picture.', korean: '멘토가 그녀가 좌절을 올바른 시각으로 보고 더 큰 그림을 볼 수 있도록 도왔어.'),
    ],
    'strike a balance': [
      WordExample(english: 'The key challenge is to strike a balance between innovation and operational stability.', korean: '핵심 도전은 혁신과 운영 안정성 사이의 균형을 잡는 거야.'),
      WordExample(english: 'Effective leaders strike a balance between being decisive and being consultative.', korean: '효과적인 리더들은 결단력 있음과 협의적임 사이의 균형을 잡아.'),
      WordExample(english: 'She struggled to strike a balance between her professional ambition and personal life.', korean: '그녀는 직업적 야망과 개인적인 삶 사이의 균형을 잡는 데 어려움을 겪었어.'),
    ],
    'take into account': [
      WordExample(english: 'Any fair evaluation must take into account both the successes and the setbacks.', korean: '공정한 평가는 성공과 좌절 모두를 고려해야 해.'),
      WordExample(english: 'When designing the policy, they failed to take into account the needs of remote workers.', korean: '정책을 설계할 때 그들은 원격 근무자들의 필요를 고려하지 못했어.'),
      WordExample(english: 'You must take into account all relevant factors before committing to the investment.', korean: '투자를 확정하기 전에 모든 관련 요소를 고려해야 해.'),
    ],
    'to a large extent': [
      WordExample(english: 'To a large extent, company culture is shaped by the behaviour of its leaders.', korean: '회사 문화는 상당한 정도로 리더들의 행동에 의해 형성돼.'),
      WordExample(english: 'The project\'s success was, to a large extent, due to exceptional team collaboration.', korean: '프로젝트의 성공은 상당한 정도로 탁월한 팀 협력 덕분이었어.'),
      WordExample(english: 'Career success depends, to a large extent, on the quality of the relationships you build.', korean: '커리어 성공은 상당한 정도로 당신이 구축하는 관계의 질에 달려 있어.'),
    ],
    'weigh the pros and cons': [
      WordExample(english: 'Before accepting any job offer, always weigh the pros and cons carefully.', korean: '어떤 취업 제안이든 수락하기 전에 항상 장단점을 신중하게 따져봐.'),
      WordExample(english: 'She took a week to weigh the pros and cons before making her final decision.', korean: '그녀는 최종 결정을 내리기 전에 일주일 동안 장단점을 따져봤어.'),
      WordExample(english: 'Good decision-makers consistently weigh the pros and cons rather than acting on impulse.', korean: '좋은 의사결정자는 충동적으로 행동하는 것이 아니라 일관되게 장단점을 따져봐.'),
    ],
    'without a doubt': [
      WordExample(english: 'Without a doubt, clear communication is the most critical skill in any leadership role.', korean: '의심할 여지 없이 명확한 소통은 모든 리더십 역할에서 가장 중요한 기술이야.'),
      WordExample(english: 'She is, without a doubt, the most talented strategist I have ever worked alongside.', korean: '그녀는 의심할 여지 없이 내가 함께 일한 가장 재능 있는 전략가야.'),
      WordExample(english: 'Without a doubt, the decision to invest in people is always the right one.', korean: '의심할 여지 없이 사람에게 투자하는 결정은 항상 옳은 거야.'),
    ],

    // ── 51~100 ───────────────────────────────────────────────
    'abide': [
      WordExample(english: 'All employees are expected to abide by the company\'s code of conduct.', korean: '모든 직원은 회사의 행동 강령을 준수해야 해.'),
      WordExample(english: 'She abides by her principles even when it would be easier to compromise.', korean: '그녀는 타협하는 게 더 쉬울 때도 자신의 원칙을 지켜.'),
      WordExample(english: 'Any contractor working on site must abide by the strictest safety protocols.', korean: '현장에서 일하는 모든 계약업체는 가장 엄격한 안전 프로토콜을 준수해야 해.'),
    ],
    'abrupt': [
      WordExample(english: 'The abrupt resignation of the CEO sent shockwaves through the entire organisation.', korean: 'CEO의 갑작스러운 사임이 전체 조직에 충격파를 보냈어.'),
      WordExample(english: 'An abrupt change in direction without explanation will erode team trust quickly.', korean: '설명 없이 갑작스러운 방향 전환은 팀의 신뢰를 빠르게 침식할 거야.'),
      WordExample(english: 'Her abrupt manner can come across as cold, even though she doesn\'t intend it.', korean: '그녀의 퉁명스러운 방식은 의도하지 않더라도 차갑게 느껴질 수 있어.'),
    ],
    'accentuate': [
      WordExample(english: 'Good presentation design accentuates your key messages rather than obscuring them.', korean: '좋은 프레젠테이션 디자인은 핵심 메시지를 가리는 것이 아니라 부각시켜.'),
      WordExample(english: 'The new uniform was designed to accentuate professionalism and brand identity.', korean: '새 유니폼은 전문성과 브랜드 정체성을 강조하도록 설계됐어.'),
      WordExample(english: 'The report accentuates the growing gap between urban and rural opportunities.', korean: '그 보고서는 도시와 농촌 간의 기회 격차가 커지고 있음을 강조해.'),
    ],
    'acute': [
      WordExample(english: 'She has an acute sense of what motivates different people in different contexts.', korean: '그녀는 다양한 맥락에서 다른 사람들에게 무엇이 동기를 부여하는지에 대한 예리한 감각이 있어.'),
      WordExample(english: 'The organisation is facing an acute shortage of experienced project managers.', korean: '조직은 경험 있는 프로젝트 관리자의 심각한 부족에 직면하고 있어.'),
      WordExample(english: 'His acute attention to detail has prevented many costly errors over the years.', korean: '세부 사항에 대한 그의 예리한 주의가 수년간 많은 비용이 드는 오류를 방지했어.'),
    ],
    'adherence': [
      WordExample(english: 'Strict adherence to the process ensures consistent and high-quality outcomes.', korean: '프로세스의 엄격한 준수가 일관되고 질 높은 결과를 보장해.'),
      WordExample(english: 'Adherence to ethical standards is non-negotiable, regardless of commercial pressure.', korean: '윤리적 기준 준수는 상업적 압박에 관계없이 협상 불가능해.'),
      WordExample(english: 'The audit found inconsistent adherence to the agreed procedures across teams.', korean: '감사는 팀 전반에 걸쳐 합의된 절차 준수의 불일치를 발견했어.'),
    ],
    'adjacent': [
      WordExample(english: 'The company is exploring adjacent markets to diversify its revenue streams.', korean: '회사는 수익원을 다양화하기 위해 인접 시장을 탐색하고 있어.'),
      WordExample(english: 'Her skills are adjacent to what we need — with some training, she\'d be a perfect fit.', korean: '그녀의 기술은 우리가 필요한 것과 인접해 있어, 약간의 교육으로 완벽하게 맞을 거야.'),
      WordExample(english: 'Moving into adjacent product categories helped the brand reach a much wider audience.', korean: '인접 제품 카테고리로 이동하는 게 브랜드가 훨씬 더 넓은 청중에게 다가가는 데 도움이 됐어.'),
    ],
    'affluent': [
      WordExample(english: 'The product is aimed at affluent consumers who prioritise quality over price.', korean: '그 제품은 가격보다 품질을 우선시하는 풍요로운 소비자들을 대상으로 해.'),
      WordExample(english: 'Even in affluent societies, pockets of serious poverty can be overlooked.', korean: '풍요로운 사회에서도 심각한 빈곤의 구역들이 간과될 수 있어.'),
      WordExample(english: 'The affluent neighbourhood attracted a cluster of premium retail and dining brands.', korean: '그 부유한 지역은 프리미엄 소매 및 외식 브랜드들을 끌어들였어.'),
    ],
    'aggravate': [
      WordExample(english: 'Ignoring employee concerns will only aggravate the underlying dissatisfaction.', korean: '직원들의 우려를 무시하면 근본적인 불만만 악화시킬 거야.'),
      WordExample(english: 'The delay aggravated an already tense situation between the two departments.', korean: '지연이 두 부서 사이의 이미 긴장된 상황을 더 악화시켰어.'),
      WordExample(english: 'Lack of sleep can significantly aggravate stress and reduce your ability to cope.', korean: '수면 부족은 스트레스를 크게 악화시키고 대처 능력을 줄일 수 있어.'),
    ],
    'agile': [
      WordExample(english: 'Agile organisations respond to change faster and recover from setbacks more effectively.', korean: '민첩한 조직들은 변화에 더 빠르게 대응하고 좌절에서 더 효과적으로 회복해.'),
      WordExample(english: 'She has an agile mind — she adapts her thinking quickly as new information arrives.', korean: '그녀는 민첩한 마음을 가지고 있어, 새로운 정보가 들어오면 생각을 빠르게 적응시켜.'),
      WordExample(english: 'The agile methodology helped the team deliver a working product in just eight weeks.', korean: '애자일 방법론이 팀이 불과 8주 만에 작동하는 제품을 납품하는 데 도움이 됐어.'),
    ],
    'alienate': [
      WordExample(english: 'Overly complex language in communications can alienate non-specialist readers.', korean: '소통에서 지나치게 복잡한 언어는 비전문 독자들을 소외시킬 수 있어.'),
      WordExample(english: 'A dismissive management style alienates talented people and drives them toward competitors.', korean: '무시하는 관리 스타일이 유능한 사람들을 소외시키고 경쟁사로 내몰아.'),
      WordExample(english: 'The drastic price increase risked alienating the brand\'s most loyal customers.', korean: '급격한 가격 인상이 브랜드의 가장 충성스러운 고객들을 소외시킬 위험이 있었어.'),
    ],
    'allegiance': [
      WordExample(english: 'Employee allegiance is earned through consistent fairness, not demanded through authority.', korean: '직원의 충성심은 권위를 통해 요구하는 게 아니라 일관된 공정함을 통해 얻어지는 거야.'),
      WordExample(english: 'Her allegiance to her core values never wavered, even under significant pressure.', korean: '그녀의 핵심 가치에 대한 충성심은 상당한 압박 아래에서도 흔들린 적이 없었어.'),
      WordExample(english: 'Brand allegiance is diminishing as consumers become more informed and discerning.', korean: '소비자들이 더 잘 알고 안목이 높아지면서 브랜드 충성도가 줄어들고 있어.'),
    ],
    'altruistic': [
      WordExample(english: 'Her decision to mentor junior colleagues was genuinely altruistic — she expected nothing in return.', korean: '후배 동료들을 멘토링하겠다는 그녀의 결정은 진정으로 이타적이었어, 그녀는 아무것도 기대하지 않았거든.'),
      WordExample(english: 'Truly altruistic behaviour is rare in a competitive environment — but it does exist.', korean: '경쟁적인 환경에서 진정으로 이타적인 행동은 드물어, 하지만 존재하긴 해.'),
      WordExample(english: 'The foundation was built on altruistic principles — improving lives without seeking recognition.', korean: '그 재단은 인정을 추구하지 않고 삶을 개선한다는 이타적인 원칙 위에 세워졌어.'),
    ],
    'ameliorate': [
      WordExample(english: 'Several measures were introduced to ameliorate the impact of the redundancies.', korean: '구조조정의 영향을 개선하기 위한 몇 가지 조치가 도입됐어.'),
      WordExample(english: 'Technology alone cannot ameliorate systemic social inequalities — policy change is essential.', korean: '기술만으로는 체계적인 사회적 불평등을 개선할 수 없어, 정책 변화가 필수야.'),
      WordExample(english: 'Open communication helped ameliorate tensions that had been building for months.', korean: '열린 소통이 수개월간 쌓여온 긴장을 완화하는 데 도움이 됐어.'),
    ],
    'anomaly': [
      WordExample(english: 'The sudden drop in sales was an anomaly that warranted closer investigation.', korean: '판매의 갑작스러운 하락은 더 면밀한 조사가 필요한 이상 현상이었어.'),
      WordExample(english: 'In a field dominated by convention, her approach was seen as a welcome anomaly.', korean: '관행이 지배하는 분야에서 그녀의 접근법은 환영받는 이례적인 것으로 여겨졌어.'),
      WordExample(english: 'Statistical anomalies in the data suggested a systematic error in the collection process.', korean: '데이터의 통계적 이상 현상이 수집 프로세스의 체계적인 오류를 시사했어.'),
    ],
    'antiquated': [
      WordExample(english: 'The company\'s antiquated IT systems were slowing down operations significantly.', korean: '회사의 구식 IT 시스템이 운영을 크게 둔화시키고 있었어.'),
      WordExample(english: 'Many performance review processes are antiquated and no longer serve their original purpose.', korean: '많은 성과 검토 프로세스들이 구식이어서 더 이상 원래 목적을 수행하지 못하고 있어.'),
      WordExample(english: 'Clinging to antiquated thinking in a modern marketplace is a path to irrelevance.', korean: '현대 시장에서 구식 사고에 집착하는 건 무관함으로 가는 길이야.'),
    ],
    'apprehension': [
      WordExample(english: 'There was widespread apprehension among the staff ahead of the restructuring announcement.', korean: '구조조정 발표를 앞두고 직원들 사이에 광범위한 불안감이 있었어.'),
      WordExample(english: 'Her initial apprehension about public speaking faded with each successful presentation.', korean: '공개 연설에 대한 그녀의 초기 불안감은 성공적인 발표를 할 때마다 사라졌어.'),
      WordExample(english: 'Acknowledging employees\' apprehension openly is the first step to easing it.', korean: '직원들의 불안감을 공개적으로 인정하는 게 그것을 완화하는 첫 번째 단계야.'),
    ],
    'archaic': [
      WordExample(english: 'Some of the workplace regulations still in force are archaic and need urgent reform.', korean: '여전히 시행 중인 일부 직장 규정들은 구시대적이어서 시급한 개혁이 필요해.'),
      WordExample(english: 'The archaic management hierarchy is incompatible with the fast-moving modern workplace.', korean: '구시대적인 관리 계층 구조는 빠르게 움직이는 현대 직장과 맞지 않아.'),
      WordExample(english: 'Using archaic language in customer communications can make a brand feel out of touch.', korean: '고객 소통에서 구식 언어를 사용하면 브랜드가 시대에 뒤떨어진 것처럼 느껴질 수 있어.'),
    ],
    'arduous': [
      WordExample(english: 'The path to mastery in any field is long and arduous, but deeply rewarding.', korean: '어떤 분야에서든 숙달로 가는 길은 길고 힘들지만 깊이 보람 있어.'),
      WordExample(english: 'She completed the arduous certification process while working full-time.', korean: '그녀는 풀타임으로 일하면서 힘든 자격증 취득 과정을 완료했어.'),
      WordExample(english: 'Negotiating across cultural and language barriers can be an arduous but worthwhile process.', korean: '문화적, 언어적 장벽을 넘어 협상하는 건 힘들지만 가치 있는 과정일 수 있어.'),
    ],
    'astute': [
      WordExample(english: 'She made an astute observation that completely reframed the way we viewed the problem.', korean: '그녀는 우리가 문제를 바라보는 방식을 완전히 재구성한 예리한 관찰을 했어.'),
      WordExample(english: 'Astute investors spotted the opportunity long before it became obvious to the market.', korean: '예리한 투자자들은 시장에서 명확해지기 훨씬 전에 그 기회를 포착했어.'),
      WordExample(english: 'Being astute about people is just as important as being technically skilled in leadership.', korean: '리더십에서 사람에 대해 예리한 것은 기술적으로 능숙한 것만큼이나 중요해.'),
    ],
    'atrophy': [
      WordExample(english: 'Skills that aren\'t used regularly will begin to atrophy over time.', korean: '정기적으로 사용되지 않는 기술들은 시간이 지남에 따라 퇴화하기 시작할 거야.'),
      WordExample(english: 'Without continuous investment, even the strongest organisational culture can atrophy.', korean: '지속적인 투자 없이는 가장 강한 조직 문화도 퇴화할 수 있어.'),
      WordExample(english: 'Creative muscles atrophy quickly if you don\'t regularly challenge yourself with new problems.', korean: '새로운 문제로 정기적으로 자신에게 도전하지 않으면 창의적 근육이 빠르게 퇴화해.'),
    ],
    'audacious': [
      WordExample(english: 'The audacious proposal surprised everyone but ultimately won the contract.', korean: '대담한 제안이 모든 사람을 놀라게 했지만 결국 계약을 따냈어.'),
      WordExample(english: 'Setting audacious goals is what separates extraordinary achievers from the merely good.', korean: '대담한 목표를 설정하는 것이 비범한 성취자와 단순히 좋은 사람을 구분해.'),
      WordExample(english: 'Her audacious decision to challenge the market leader paid off beyond all expectations.', korean: '시장 선두주자에 도전하는 그녀의 대담한 결정이 모든 기대를 뛰어넘어 성과를 냈어.'),
    ],
    'axiom': [
      WordExample(english: 'It has become an axiom in business that culture eats strategy for breakfast.', korean: '"문화는 전략을 아침 식사로 먹는다"는 말은 비즈니스에서 자명한 진리가 됐어.'),
      WordExample(english: 'The axiom that "the customer is always right" has both merits and clear limitations.', korean: '"고객은 항상 옳다"는 공리에는 장점과 명확한 한계가 모두 있어.'),
      WordExample(english: 'Question every axiom — what was true a decade ago may not hold today.', korean: '모든 공리에 의문을 제기해, 10년 전에 사실이었던 것이 오늘날은 그렇지 않을 수 있어.'),
    ],
    'benevolent': [
      WordExample(english: 'A benevolent leader empowers others rather than hoarding power for themselves.', korean: '자비로운 리더는 자신을 위해 권력을 독점하는 것이 아니라 다른 사람들에게 힘을 부여해.'),
      WordExample(english: 'The company has a long history of benevolent investment in its local communities.', korean: '그 회사는 지역 사회에 대한 자비로운 투자의 오랜 역사가 있어.'),
      WordExample(english: 'Her benevolent approach to management inspired deep loyalty across the organisation.', korean: '그녀의 자비로운 관리 방식이 조직 전반에 걸쳐 깊은 충성심을 불러일으켰어.'),
    ],
    'bewildering': [
      WordExample(english: 'The sheer range of tools and platforms available today can be bewildering for new starters.', korean: '오늘날 이용 가능한 도구와 플랫폼의 방대한 범위가 신입자들에게 당혹스러울 수 있어.'),
      WordExample(english: 'The pace of change in the industry has been bewildering, even for seasoned professionals.', korean: '업계의 변화 속도는 경험 많은 전문가들에게도 당혹스러울 정도야.'),
      WordExample(english: 'What seems bewildering at first often becomes clear once you understand the underlying logic.', korean: '처음에 당혹스럽게 보이는 것도 근본적인 논리를 이해하면 종종 명확해져.'),
    ],
    'bilateral': [
      WordExample(english: 'The two nations signed a bilateral trade agreement that benefited both economies.', korean: '두 나라는 양국 경제 모두에 이익이 되는 양자 무역 협정을 체결했어.'),
      WordExample(english: 'Bilateral meetings allow for frank, candid conversations that are harder in group settings.', korean: '양자 회담은 그룹 환경에서는 더 어려운 솔직하고 진솔한 대화를 가능하게 해.'),
      WordExample(english: 'The bilateral partnership was a significant milestone in the two companies\' relationship.', korean: '양자 파트너십은 두 회사 관계의 중요한 이정표였어.'),
    ],
    'brevity': [
      WordExample(english: 'Brevity in communication is a sign of respect for the other person\'s time.', korean: '소통에서의 간결함은 상대방의 시간에 대한 존중의 표시야.'),
      WordExample(english: 'She is known for the brevity and precision of her presentations — never a wasted word.', korean: '그녀는 발표의 간결함과 정확성으로 알려져 있어, 낭비되는 말이 없거든.'),
      WordExample(english: 'With brevity comes clarity — the shorter your message, the more likely it is to land.', korean: '간결함에는 명확성이 따라와, 메시지가 짧을수록 전달될 가능성이 높아.'),
    ],
    'broaden': [
      WordExample(english: 'Travelling widely and reading broadly are two great ways to broaden your perspective.', korean: '폭넓게 여행하고 널리 읽는 것은 시각을 넓히는 두 가지 훌륭한 방법이야.'),
      WordExample(english: 'The company plans to broaden its product range to reach a wider customer base.', korean: '회사는 더 넓은 고객 기반에 도달하기 위해 제품 범위를 확장할 계획이야.'),
      WordExample(english: 'Cross-functional projects are a great way to broaden your skills and internal network.', korean: '크로스펑셔널 프로젝트는 기술과 내부 인맥을 넓히는 훌륭한 방법이야.'),
    ],
    'candor': [
      WordExample(english: 'She delivered the difficult feedback with a rare combination of candor and compassion.', korean: '그녀는 드문 솔직함과 연민의 조합으로 어려운 피드백을 전달했어.'),
      WordExample(english: 'Candor in leadership builds more trust than carefully managed, polished messaging.', korean: '리더십에서의 솔직함은 신중하게 관리된 세련된 메시지보다 더 많은 신뢰를 구축해.'),
      WordExample(english: 'He appreciated her candor — it was refreshing to hear an honest perspective.', korean: '그는 그녀의 솔직함을 고마워했어, 정직한 관점을 듣는 건 신선했거든.'),
    ],
    'capricious': [
      WordExample(english: 'A capricious management style creates anxiety and makes planning nearly impossible.', korean: '변덕스러운 관리 스타일은 불안을 만들고 계획을 거의 불가능하게 해.'),
      WordExample(english: 'The capricious nature of the market demands constant vigilance from investors.', korean: '시장의 변덕스러운 성질이 투자자들에게 끊임없는 경계심을 요구해.'),
      WordExample(english: 'Consistent leadership is more effective than capricious behaviour, however dynamic it may seem.', korean: '일관된 리더십이 아무리 역동적으로 보이더라도 변덕스러운 행동보다 더 효과적이야.'),
    ],
    'circumspect': [
      WordExample(english: 'She was circumspect in her response, careful not to commit before knowing all the facts.', korean: '그녀는 모든 사실을 알기 전에 확약하지 않도록 조심스럽게 신중한 답변을 했어.'),
      WordExample(english: 'Being circumspect in public statements is wise when negotiations are still ongoing.', korean: '협상이 아직 진행 중일 때 공개 발언에서 신중한 것이 현명해.'),
      WordExample(english: 'A circumspect approach to risk management protects the organisation from avoidable surprises.', korean: '리스크 관리에 대한 신중한 접근이 조직을 피할 수 있는 놀라움으로부터 보호해.'),
    ],
    'clandestine': [
      WordExample(english: 'The clandestine negotiations were eventually exposed, damaging both parties\' reputations.', korean: '비밀 협상이 결국 드러나 양측의 명성을 훼손했어.'),
      WordExample(english: 'Clandestine workarounds might solve short-term problems but create bigger long-term risks.', korean: '비밀스러운 임시방편은 단기적인 문제를 해결할 수 있지만 더 큰 장기적 위험을 만들어.'),
      WordExample(english: 'A culture of transparency eliminates the need for clandestine information-sharing.', korean: '투명성 문화는 비밀스러운 정보 공유의 필요를 없애줘.'),
    ],
    'clarity': [
      WordExample(english: 'Clarity of purpose is what separates high-performing teams from merely busy ones.', korean: '목적의 명확성이 고성과 팀과 단순히 바쁜 팀을 구분해.'),
      WordExample(english: 'She communicates with remarkable clarity, making complex ideas easy to grasp.', korean: '그녀는 복잡한 아이디어를 쉽게 이해할 수 있게 만드는 놀라운 명확성으로 소통해.'),
      WordExample(english: 'Before launching any project, ensure there is absolute clarity on goals and responsibilities.', korean: '어떤 프로젝트든 시작하기 전에 목표와 책임에 대한 완전한 명확성을 확보해.'),
    ],
    'coerce': [
      WordExample(english: 'No one should ever be coerced into accepting terms that are not in their best interest.', korean: '누구도 자신의 이익에 맞지 않는 조건을 수락하도록 강요받아서는 안 돼.'),
      WordExample(english: 'True leadership inspires voluntary commitment — it never relies on coercion.', korean: '진정한 리더십은 자발적인 헌신을 이끌어내, 강제에 절대 의존하지 않아.'),
      WordExample(english: 'She felt coerced into signing the contract without being given time to review it properly.', korean: '그녀는 제대로 검토할 시간 없이 계약서에 서명하도록 강요당하는 느낌이었어.'),
    ],
    'cogent': [
      WordExample(english: 'She made a cogent argument for restructuring the team that was difficult to counter.', korean: '그녀는 반박하기 어려운 팀 재편에 대한 명쾌한 주장을 했어.'),
      WordExample(english: 'A cogent business case, backed by solid data, will always attract investment.', korean: '탄탄한 데이터로 뒷받침된 명쾌한 사업 계획은 항상 투자를 끌어들일 거야.'),
      WordExample(english: 'His analysis was cogent and precise, leaving no room for doubt about his recommendation.', korean: '그의 분석은 명쾌하고 정확해서 그의 권고에 대한 의심의 여지가 없었어.'),
    ],
    'coherent': [
      WordExample(english: 'The strategy must be coherent — every initiative should align with the core objective.', korean: '전략은 일관성 있어야 해, 모든 계획이 핵심 목표와 일치해야 해.'),
      WordExample(english: 'She presented a coherent vision that made it easy for the team to understand the direction.', korean: '그녀는 팀이 방향을 쉽게 이해할 수 있게 하는 일관된 비전을 제시했어.'),
      WordExample(english: 'For a report to be persuasive, it must be coherent, well-structured and clearly argued.', korean: '보고서가 설득력 있으려면 일관성 있고 잘 구조화되며 명확하게 논증돼야 해.'),
    ],
    'commensurate': [
      WordExample(english: 'Her compensation should be commensurate with her level of experience and contribution.', korean: '그녀의 보상은 그녀의 경험 수준과 기여에 상응해야 해.'),
      WordExample(english: 'The risk taken should always be commensurate with the potential reward.', korean: '감수하는 위험은 항상 잠재적 보상에 상응해야 해.'),
      WordExample(english: 'We offer salaries commensurate with industry standards and individual performance.', korean: '우리는 업계 표준과 개인 성과에 상응하는 급여를 제공해.'),
    ],
    'complicity': [
      WordExample(english: 'Silence in the face of wrongdoing can amount to a form of complicity.', korean: '잘못된 행동 앞에서의 침묵은 일종의 공모가 될 수 있어.'),
      WordExample(english: 'Several executives were accused of complicity in concealing the financial irregularities.', korean: '여러 임원이 재무 불규칙성을 은폐하는 데 공모한 혐의를 받았어.'),
      WordExample(english: 'Organisations must guard against inadvertent complicity in unethical supply chains.', korean: '조직들은 비윤리적인 공급망에 의도치 않게 가담하지 않도록 주의해야 해.'),
    ],
    'conciliatory': [
      WordExample(english: 'She adopted a conciliatory tone that helped de-escalate the tensions in the room.', korean: '그녀는 방 안의 긴장을 완화하는 데 도움이 된 화해적인 어조를 취했어.'),
      WordExample(english: 'A conciliatory approach is often more productive than holding firm to every position.', korean: '화해적인 접근은 모든 입장을 고수하는 것보다 종종 더 생산적이야.'),
      WordExample(english: 'His conciliatory gesture broke the deadlock and opened the door to a final agreement.', korean: '그의 화해적인 제스처가 교착 상태를 깨고 최종 합의로 가는 문을 열었어.'),
    ],
    'concise': [
      WordExample(english: 'In a world of information overload, concise communication is more valuable than ever.', korean: '정보 과잉의 세상에서 간결한 소통은 그 어느 때보다 더 가치 있어.'),
      WordExample(english: 'Her executive summary was concise yet comprehensive — exactly what the board needed.', korean: '그녀의 요약 보고서는 간결하면서도 포괄적이었어, 이사회가 필요한 바로 그것이었거든.'),
      WordExample(english: 'Be concise in your emails — people are more likely to read and respond to short messages.', korean: '이메일은 간결하게 써, 사람들은 짧은 메시지를 읽고 응답할 가능성이 더 높거든.'),
    ],
    'condone': [
      WordExample(english: 'The organisation will not condone any form of harassment or discriminatory behaviour.', korean: '조직은 어떤 형태의 괴롭힘이나 차별적 행동도 용납하지 않을 거야.'),
      WordExample(english: 'Failing to act on misconduct is tantamount to condoning it.', korean: '비위 행동에 조치를 취하지 않는 건 그것을 묵인하는 것과 다름없어.'),
      WordExample(english: 'She made it clear she would never condone cutting corners on safety to meet a deadline.', korean: '그녀는 마감 기한을 맞추기 위해 안전을 소홀히 하는 걸 절대 용납하지 않겠다는 걸 분명히 했어.'),
    ],
    'confluence': [
      WordExample(english: 'The startup emerged at a confluence of technological innovation and shifting consumer needs.', korean: '그 스타트업은 기술 혁신과 변화하는 소비자 요구의 합류 지점에서 등장했어.'),
      WordExample(english: 'Her work sits at the confluence of data science and behavioural psychology.', korean: '그녀의 작업은 데이터 과학과 행동 심리학의 합류 지점에 있어.'),
      WordExample(english: 'A confluence of factors — timing, team and market conditions — drove the company\'s success.', korean: '타이밍, 팀, 시장 조건이라는 여러 요소의 합류가 회사의 성공을 이끌었어.'),
    ],
    'congruent': [
      WordExample(english: 'Leadership behaviour must be congruent with the values the organisation publicly espouses.', korean: '리더십 행동은 조직이 공개적으로 표방하는 가치와 일치해야 해.'),
      WordExample(english: 'Her personal brand is congruent with how she actually shows up every day at work.', korean: '그녀의 개인 브랜드는 그녀가 매일 직장에서 실제로 모습을 드러내는 방식과 일치해.'),
      WordExample(english: 'For trust to develop, words and actions must be congruent and consistent over time.', korean: '신뢰가 형성되려면 말과 행동이 시간이 지남에 따라 일치하고 일관적이어야 해.'),
    ],
    'conscientious': [
      WordExample(english: 'She is one of the most conscientious employees I\'ve ever managed — never a detail missed.', korean: '그녀는 내가 관리한 가장 성실한 직원 중 한 명이야, 놓친 세부 사항이 없어.'),
      WordExample(english: 'Being conscientious about quality at every stage reduces the need for costly rework.', korean: '모든 단계에서 품질에 대해 성실한 것이 비용이 많이 드는 재작업의 필요를 줄여.'),
      WordExample(english: 'Conscientious leaders create cultures where standards are maintained without micromanagement.', korean: '성실한 리더들은 세세한 관리 없이도 기준이 유지되는 문화를 만들어.'),
    ],
    'contentious': [
      WordExample(english: 'The performance bonus structure has become a contentious issue among the team.', korean: '성과 보너스 구조가 팀 내에서 논란이 많은 문제가 됐어.'),
      WordExample(english: 'Handle contentious topics with care — approach them with data, not emotion.', korean: '논란이 많은 주제는 조심스럽게 다뤄, 감정이 아닌 데이터로 접근해.'),
      WordExample(english: 'The contentious merger divided stakeholders and attracted intense media scrutiny.', korean: '그 논란이 많은 합병은 이해관계자들을 나눴고 강렬한 미디어 검토를 끌어들였어.'),
    ],
    'continuum': [
      WordExample(english: 'Leadership effectiveness exists on a continuum — there\'s always room for growth.', korean: '리더십 효과는 연속선상에 존재해, 항상 성장의 여지가 있어.'),
      WordExample(english: 'Employee engagement sits on a continuum from fully disengaged to fully committed.', korean: '직원 참여는 완전히 이탈된 것부터 완전히 헌신적인 것까지 연속선상에 있어.'),
      WordExample(english: 'Think of change not as an event but as a continuum that requires ongoing attention.', korean: '변화를 사건이 아닌 지속적인 주의가 필요한 연속선으로 생각해봐.'),
    ],
    'contrive': [
      WordExample(english: 'The solution seemed contrived — too perfect to have emerged naturally from the data.', korean: '그 해결책은 인위적으로 보였어, 데이터에서 자연스럽게 나왔기에는 너무 완벽했거든.'),
      WordExample(english: 'She contrived a way to meet the deadline despite the last-minute resource changes.', korean: '그녀는 막판 자원 변경에도 불구하고 마감 기한을 맞추는 방법을 고안했어.'),
      WordExample(english: 'Authentic storytelling will always outperform contrived corporate narratives.', korean: '진정성 있는 스토리텔링은 항상 인위적인 기업 서사를 능가할 거야.'),
    ],
    'convey': [
      WordExample(english: 'The best communicators convey complex ideas with simplicity and confidence.', korean: '최고의 소통가들은 복잡한 아이디어를 단순함과 자신감으로 전달해.'),
      WordExample(english: 'What you don\'t say can convey just as much — or more — as what you do say.', korean: '말하지 않는 것이 말하는 것만큼이나, 또는 더 많이 전달할 수 있어.'),
      WordExample(english: 'She used a powerful metaphor to convey the urgency of the situation to the board.', korean: '그녀는 이사회에 상황의 긴박성을 전달하기 위해 강력한 은유를 사용했어.'),
    ],
    'correlate': [
      WordExample(english: 'High employee engagement consistently correlates with stronger business performance.', korean: '높은 직원 참여는 일관되게 더 강한 사업 성과와 상관관계가 있어.'),
      WordExample(english: 'The researchers found that sleep quality correlates strongly with productivity levels.', korean: '연구자들은 수면 질이 생산성 수준과 강한 상관관계가 있다는 것을 발견했어.'),
      WordExample(english: 'Be careful not to assume causation just because two variables correlate.', korean: '두 변수가 상관관계가 있다고 해서 인과관계를 가정하지 않도록 주의해.'),
    ],
    'corroborate': [
      WordExample(english: 'Multiple independent sources corroborated the original findings, strengthening the case.', korean: '여러 독립적인 출처가 원래 결과를 확인해줬고 사례를 강화했어.'),
      WordExample(english: 'Do you have evidence to corroborate what the report claims?', korean: '보고서가 주장하는 것을 확인해줄 증거가 있어?'),
      WordExample(english: 'The audit corroborated every figure in the financial statements — no discrepancies found.', korean: '감사는 재무제표의 모든 수치를 확인했어, 불일치는 발견되지 않았어.'),
    ],
    'counteract': [
      WordExample(english: 'The new incentive scheme was introduced to counteract the rising attrition rate.', korean: '증가하는 이직률에 대응하기 위해 새로운 인센티브 제도가 도입됐어.'),
      WordExample(english: 'Regular exercise can counteract many of the negative effects of a sedentary lifestyle.', korean: '규칙적인 운동이 앉아서만 생활하는 라이프스타일의 많은 부정적인 영향에 대응할 수 있어.'),
      WordExample(english: 'She introduced more structured communication to counteract the growing information silos.', korean: '그녀는 점점 커지는 정보 사일로에 대응하기 위해 더 구조화된 소통을 도입했어.'),
    ],

    // ── 101~150 ────────────────────────────────────────────────
    'covert': [
      WordExample(english: 'The organisation ran a covert study to identify bottlenecks before announcing the restructure.', korean: '조직은 구조 개편을 발표하기 전에 병목 현상을 파악하기 위해 비밀 연구를 실시했어.'),
      WordExample(english: 'Covert resistance to change — eye-rolls and quiet non-compliance — is harder to address than open opposition.', korean: '변화에 대한 은밀한 저항, 즉 눈을 굴리거나 조용히 따르지 않는 것은 공개적인 반대보다 다루기 어려워.'),
      WordExample(english: 'She suspected covert collaboration between the two vendors, which might violate fair-competition rules.', korean: '그녀는 두 벤더 간의 은밀한 협력이 있다고 의심했는데, 그것은 공정 경쟁 규칙을 위반할 수 있어.'),
    ],
    'curtail': [
      WordExample(english: 'Budget constraints forced us to curtail several expansion plans for this quarter.', korean: '예산 제약으로 인해 이번 분기의 여러 확장 계획을 축소할 수밖에 없었어.'),
      WordExample(english: 'The new policy will curtail unnecessary meetings and free up time for deep work.', korean: '새 정책은 불필요한 회의를 줄이고 심층 작업을 위한 시간을 확보할 거야.'),
      WordExample(english: 'Curtailing expenses now will give the company more flexibility during a potential downturn.', korean: '지금 비용을 줄이면 잠재적인 경기 침체 시에 회사가 더 많은 유연성을 가질 수 있어.'),
    ],
    'daunting': [
      WordExample(english: 'The scale of the project was daunting, but the team broke it into manageable milestones.', korean: '프로젝트의 규모가 버거웠지만 팀은 그것을 관리 가능한 마일스톤으로 나눴어.'),
      WordExample(english: 'Starting a new role can feel daunting — focus on listening and learning in the first 90 days.', korean: '새로운 역할을 시작하는 것은 버겁게 느껴질 수 있어, 처음 90일은 듣고 배우는 데 집중해봐.'),
      WordExample(english: 'Even the most daunting challenges become approachable when you build the right support system.', korean: '아무리 버거운 도전도 적절한 지원 시스템을 구축하면 접근하기 쉬워져.'),
    ],
    'debilitating': [
      WordExample(english: 'Chronic stress can have a debilitating effect on both productivity and long-term health.', korean: '만성 스트레스는 생산성과 장기적인 건강 모두에 심각하게 약화시키는 영향을 미칠 수 있어.'),
      WordExample(english: 'Perfectionism becomes debilitating when it prevents you from shipping anything at all.', korean: '완벽주의는 아무것도 출시하지 못하게 할 때 심각하게 약화시키는 요소가 돼.'),
      WordExample(english: 'The team overcame a debilitating period of uncertainty by focusing on what they could control.', korean: '팀은 통제할 수 있는 것에 집중함으로써 심각하게 약화시키는 불확실성의 시기를 극복했어.'),
    ],
    'deference': [
      WordExample(english: 'In deference to the concerns raised, management agreed to postpone the rollout.', korean: '제기된 우려에 경의를 표하여 경영진은 출시를 연기하기로 동의했어.'),
      WordExample(english: 'Excessive deference to authority can stifle innovation and suppress important dissenting voices.', korean: '권위에 대한 지나친 복종은 혁신을 억누르고 중요한 반대 목소리를 억압할 수 있어.'),
      WordExample(english: 'She showed deference to the senior engineer\'s expertise while still voicing her own perspective.', korean: '그녀는 선임 엔지니어의 전문성에 경의를 표하면서도 자신의 관점을 표현했어.'),
    ],
    'delineate': [
      WordExample(english: 'The contract clearly delineates each party\'s responsibilities and deliverables.', korean: '계약서는 각 당사자의 책임과 결과물을 명확하게 규정해.'),
      WordExample(english: 'Before starting, delineate the project scope to avoid misunderstandings down the line.', korean: '시작하기 전에 프로젝트 범위를 명확히 규정해서 나중에 오해가 생기지 않도록 해.'),
      WordExample(english: 'The report delineates the key differences between the two strategic options available.', korean: '보고서는 이용 가능한 두 전략적 옵션 사이의 주요 차이점을 명확히 규정해.'),
    ],
    'denounce': [
      WordExample(english: 'Several industry leaders publicly denounced the unethical marketing practices exposed in the report.', korean: '여러 업계 리더들이 보고서에서 폭로된 비윤리적인 마케팅 관행을 공개적으로 비난했어.'),
      WordExample(english: 'It takes courage to denounce wrongdoing, especially when it involves powerful stakeholders.', korean: '특히 강력한 이해관계자가 관련될 때 잘못된 행동을 비난하는 것은 용기가 필요해.'),
      WordExample(english: 'The whistleblower denounced the company\'s data-privacy violations to the regulatory body.', korean: '내부 고발자는 회사의 데이터 개인 정보 침해를 규제 기관에 신고했어.'),
    ],
    'deplete': [
      WordExample(english: 'Overworking your team will quickly deplete morale and drive away your best performers.', korean: '팀을 과도하게 일시키면 사기가 빠르게 고갈되고 최고 성과자들이 떠날 거야.'),
      WordExample(english: 'Long-term cost-cutting can deplete the innovation capacity needed for future growth.', korean: '장기적인 비용 절감은 미래 성장에 필요한 혁신 역량을 고갈시킬 수 있어.'),
      WordExample(english: 'Running without adequate rest depletes cognitive resources and leads to poor decision-making.', korean: '충분한 휴식 없이 달리면 인지 자원이 고갈되고 잘못된 의사 결정으로 이어져.'),
    ],
    'derogatory': [
      WordExample(english: 'Any derogatory language in the workplace will not be tolerated and may lead to disciplinary action.', korean: '직장 내 어떠한 경멸적인 언어도 용납되지 않으며 징계 조치로 이어질 수 있어.'),
      WordExample(english: 'She firmly addressed the derogatory comment made in the meeting, setting a clear cultural standard.', korean: '그녀는 회의에서 나온 경멸적인 발언을 단호하게 다루며 명확한 문화적 기준을 세웠어.'),
      WordExample(english: 'Avoid derogatory generalisations about any group — they erode trust and damage team cohesion.', korean: '어떤 집단에 대한 경멸적인 일반화는 피해, 그것은 신뢰를 침식하고 팀 결속력을 손상시켜.'),
    ],
    'devoid': [
      WordExample(english: 'A strategy devoid of a clear value proposition is unlikely to win in a competitive market.', korean: '명확한 가치 제안이 없는 전략은 경쟁적인 시장에서 이기기 어려울 거야.'),
      WordExample(english: 'His feedback was devoid of any actionable suggestions, leaving the team unsure how to improve.', korean: '그의 피드백은 실행 가능한 제안이 전혀 없어서 팀이 어떻게 개선해야 할지 모르게 했어.'),
      WordExample(english: 'An office devoid of psychological safety will never generate the bold ideas the business needs.', korean: '심리적 안전이 없는 사무실은 사업에 필요한 대담한 아이디어를 결코 만들어내지 못할 거야.'),
    ],
    'dexterity': [
      WordExample(english: 'Navigating organisational politics requires both intellectual dexterity and emotional intelligence.', korean: '조직 정치를 헤쳐나가려면 지적 능숙함과 감성 지능 모두가 필요해.'),
      WordExample(english: 'She demonstrated remarkable dexterity in managing multiple high-stakes projects simultaneously.', korean: '그녀는 여러 고위험 프로젝트를 동시에 관리하는 데 놀라운 능숙함을 보여줬어.'),
      WordExample(english: 'Digital dexterity — the ability to adapt quickly to new tools — is now a core workplace skill.', korean: '디지털 능숙함, 즉 새로운 도구에 빠르게 적응하는 능력이 이제 핵심 직장 능력이야.'),
    ],
    'dichotomy': [
      WordExample(english: 'The false dichotomy between profit and purpose is increasingly being challenged by modern leaders.', korean: '이익과 목적 사이의 잘못된 이분법은 현대 리더들에 의해 점점 더 도전받고 있어.'),
      WordExample(english: 'There is often a false dichotomy between stability and innovation — you can pursue both.', korean: '안정성과 혁신 사이에 잘못된 이분법이 있는 경우가 많아, 둘 다 추구할 수 있어.'),
      WordExample(english: 'The speaker exposed the dichotomy between what the company claimed publicly and what it practised internally.', korean: '연설자는 회사가 공개적으로 주장한 것과 내부적으로 실천한 것 사이의 이분법을 폭로했어.'),
    ],
    'diffuse': [
      WordExample(english: 'A skilled mediator can diffuse tension before it escalates into a full conflict.', korean: '능숙한 중재자는 긴장이 전면적인 갈등으로 확대되기 전에 해소할 수 있어.'),
      WordExample(english: 'The manager used humour to diffuse the awkwardness during the difficult conversation.', korean: '관리자는 어려운 대화 중 어색함을 해소하기 위해 유머를 활용했어.'),
      WordExample(english: 'Social media can rapidly diffuse both accurate information and harmful misinformation.', korean: '소셜 미디어는 정확한 정보와 해로운 허위 정보 모두를 빠르게 퍼뜨릴 수 있어.'),
    ],
    'diligent': [
      WordExample(english: 'A diligent approach to documentation prevents costly misunderstandings during handovers.', korean: '문서화에 대한 부지런한 접근법은 인수인계 중 비용이 많이 드는 오해를 예방해.'),
      WordExample(english: 'She was diligent in following up on every action item from the meeting.', korean: '그녀는 회의의 모든 실행 항목을 부지런히 후속 조치했어.'),
      WordExample(english: 'Diligent preparation is the foundation of confident, high-quality presentations.', korean: '부지런한 준비가 자신감 있고 고품질의 발표의 토대야.'),
    ],
    'discerning': [
      WordExample(english: 'A discerning leader can tell the difference between a real problem and a symptom of a deeper issue.', korean: '안목 있는 리더는 실제 문제와 더 깊은 문제의 증상 사이의 차이를 구분할 수 있어.'),
      WordExample(english: 'Today\'s consumers are increasingly discerning about the brands they choose to support.', korean: '오늘날의 소비자들은 지지하기로 선택한 브랜드에 대해 점점 더 안목이 높아지고 있어.'),
      WordExample(english: 'She brought a discerning eye to the data, quickly identifying the one anomaly that mattered.', korean: '그녀는 데이터에 안목 있는 눈을 가져와 중요한 하나의 이상값을 빠르게 파악했어.'),
    ],
    'discourse': [
      WordExample(english: 'Open and respectful discourse is essential to healthy organisational decision-making.', korean: '개방적이고 존중하는 담론은 건강한 조직적 의사 결정에 필수적이야.'),
      WordExample(english: 'The conference sparked a rich discourse on the ethical implications of AI in the workplace.', korean: '컨퍼런스는 직장에서 AI의 윤리적 함의에 관한 풍부한 담론을 촉발했어.'),
      WordExample(english: 'Shifting the public discourse from blame to solutions is one of the hardest leadership challenges.', korean: '공개적 담론을 비난에서 해결책으로 전환하는 것은 가장 어려운 리더십 과제 중 하나야.'),
    ],
    'dispassionate': [
      WordExample(english: 'A dispassionate analysis of the data often reveals truths that emotion-driven thinking obscures.', korean: '데이터에 대한 냉정한 분석은 감정 주도적 사고가 가리는 진실을 드러내는 경우가 많아.'),
      WordExample(english: 'In difficult negotiations, a dispassionate tone helps keep discussions productive and focused.', korean: '어려운 협상에서 냉정한 어조는 토론을 생산적이고 집중된 상태로 유지하는 데 도움이 돼.'),
      WordExample(english: 'She offered a dispassionate review of the project, which was far more useful than cheerleading.', korean: '그녀는 프로젝트에 대한 냉정한 검토를 제공했는데, 그것이 응원보다 훨씬 더 유용했어.'),
    ],
    'disseminate': [
      WordExample(english: 'Use multiple channels to disseminate key information and ensure it reaches everyone.', korean: '핵심 정보를 보급하고 모든 사람에게 전달되도록 여러 채널을 활용해.'),
      WordExample(english: 'The research team published a plain-language summary to disseminate findings to a wider audience.', korean: '연구팀은 연구 결과를 더 넓은 청중에게 보급하기 위해 평이한 언어로 된 요약을 발표했어.'),
      WordExample(english: 'Leaders must be intentional about how they disseminate strategic updates across the organisation.', korean: '리더들은 조직 전체에 전략적 업데이트를 보급하는 방법에 대해 의도적이어야 해.'),
    ],
    'distill': [
      WordExample(english: 'The best strategists can distill complex situations into a handful of critical priorities.', korean: '최고의 전략가들은 복잡한 상황을 몇 가지 중요한 우선순위로 압축할 수 있어.'),
      WordExample(english: 'Her talent was to distill hours of discussion into a crisp, actionable summary.', korean: '그녀의 재능은 몇 시간의 토론을 간결하고 실행 가능한 요약으로 압축하는 거였어.'),
      WordExample(english: 'Good writing distills ideas to their essence, removing anything that doesn\'t earn its place.', korean: '좋은 글쓰기는 아이디어를 그 본질로 압축해서 자리를 차지할 만한 가치가 없는 것은 무엇이든 제거해.'),
    ],
    'divergent': [
      WordExample(english: 'Divergent thinking is the starting point for innovation — encourage it before evaluating ideas.', korean: '발산적 사고가 혁신의 출발점이야, 아이디어를 평가하기 전에 그것을 장려해.'),
      WordExample(english: 'The two teams had divergent views on the root cause, so a joint review session was arranged.', korean: '두 팀은 근본 원인에 대한 발산적인 견해를 가지고 있어서 공동 검토 세션이 마련됐어.'),
      WordExample(english: 'Divergent feedback from customers signals that the product may need to be segmented more carefully.', korean: '고객으로부터의 발산적인 피드백은 제품이 더 신중하게 세분화될 필요가 있다는 신호야.'),
    ],
    'dogmatic': [
      WordExample(english: 'A dogmatic adherence to one methodology can blind a team to better approaches.', korean: '한 방법론에 대한 독단적인 고수는 팀이 더 나은 접근법을 보지 못하게 할 수 있어.'),
      WordExample(english: 'Effective leaders hold strong views but avoid being dogmatic — they update their thinking with evidence.', korean: '효과적인 리더들은 강한 견해를 가지고 있지만 독단적이지 않아, 증거로 사고를 업데이트하거든.'),
      WordExample(english: 'The organisation\'s dogmatic culture made it slow to adapt when the market shifted dramatically.', korean: '조직의 독단적인 문화는 시장이 급격히 변화했을 때 적응을 느리게 만들었어.'),
    ],
    'dubious': [
      WordExample(english: 'She was dubious about the projected returns and asked for a more detailed breakdown.', korean: '그녀는 예상 수익에 의구심을 품고 더 상세한 내역을 요청했어.'),
      WordExample(english: 'The claim sounded dubious, so the team decided to verify it independently before proceeding.', korean: '그 주장은 의심스럽게 들렸어, 그래서 팀은 진행하기 전에 독립적으로 확인하기로 했어.'),
      WordExample(english: 'Any strategy built on dubious assumptions is likely to collapse when tested in the real world.', korean: '의심스러운 가정 위에 구축된 전략은 실제 세계에서 테스트될 때 무너질 가능성이 높아.'),
    ],
    'earnest': [
      WordExample(english: 'His earnest commitment to the team\'s mission inspired those around him to give their best.', korean: '팀의 사명에 대한 그의 진지한 헌신은 주변 사람들이 최선을 다하도록 영감을 줬어.'),
      WordExample(english: 'An earnest apology, followed by concrete changed behaviour, is the fastest way to rebuild trust.', korean: '구체적인 행동 변화가 뒤따르는 진심 어린 사과가 신뢰를 재구축하는 가장 빠른 방법이야.'),
      WordExample(english: 'She made an earnest effort to understand the client\'s concerns before proposing any solution.', korean: '그녀는 어떤 해결책을 제안하기 전에 고객의 우려를 이해하기 위해 진심 어린 노력을 기울였어.'),
    ],
    'egalitarian': [
      WordExample(english: 'An egalitarian culture values contribution over seniority and empowers people at every level.', korean: '평등주의적 문화는 연공서열보다 기여를 중시하고 모든 수준의 사람들에게 권한을 부여해.'),
      WordExample(english: 'The flat structure was designed to create a more egalitarian environment where ideas could flow freely.', korean: '수평적 구조는 아이디어가 자유롭게 흐를 수 있는 더 평등주의적인 환경을 만들기 위해 설계됐어.'),
      WordExample(english: 'An egalitarian approach to meetings means every voice is actively sought, not just the loudest ones.', korean: '회의에 대한 평등주의적 접근법은 가장 큰 목소리뿐 아니라 모든 목소리를 적극적으로 찾는 것을 의미해.'),
    ],
    'elusive': [
      WordExample(english: 'Work-life balance can feel elusive when you are in a demanding leadership role.', korean: '요구가 많은 리더십 역할에 있을 때 일과 삶의 균형은 달성하기 어렵게 느껴질 수 있어.'),
      WordExample(english: 'True alignment across large organisations is elusive but worth pursuing relentlessly.', korean: '대규모 조직 전체의 진정한 정렬은 달성하기 어렵지만 끊임없이 추구할 가치가 있어.'),
      WordExample(english: 'The root cause of the recurring issue remained elusive until the team analysed three months of data together.', korean: '반복되는 문제의 근본 원인은 팀이 3개월치 데이터를 함께 분석할 때까지 파악하기 어려웠어.'),
    ],
    'eminent': [
      WordExample(english: 'The company brought in an eminent industry expert to advise on the strategic roadmap.', korean: '회사는 전략적 로드맵에 대한 조언을 위해 저명한 업계 전문가를 영입했어.'),
      WordExample(english: 'She is an eminent figure in the field of organisational psychology, with over 30 years of research.', korean: '그녀는 30년 이상의 연구를 가진 조직 심리학 분야의 저명한 인물이야.'),
      WordExample(english: 'Learning from eminent practitioners shortens the time it takes to develop mastery in any domain.', korean: '저명한 실무자들로부터 배우는 것은 어떤 분야에서든 숙달에 도달하는 데 걸리는 시간을 단축해.'),
    ],
    'empathy': [
      WordExample(english: 'Empathy is the foundation of effective leadership — understand your people before you try to lead them.', korean: '공감은 효과적인 리더십의 토대야, 사람들을 이끌려고 하기 전에 그들을 이해해.'),
      WordExample(english: 'Showing genuine empathy during difficult conversations builds trust and psychological safety.', korean: '어려운 대화 중 진정한 공감을 보여주는 것이 신뢰와 심리적 안전을 구축해.'),
      WordExample(english: 'Customer empathy — truly understanding pain points — is what separates great products from mediocre ones.', korean: '고객 공감, 즉 고통 포인트를 진정으로 이해하는 것이 훌륭한 제품과 평범한 제품을 구분해.'),
    ],
    'encompass': [
      WordExample(english: 'The new strategy encompasses everything from talent development to market expansion.', korean: '새로운 전략은 인재 개발부터 시장 확장까지 모든 것을 포괄해.'),
      WordExample(english: 'A holistic view of performance must encompass wellbeing, not just output metrics.', korean: '성과에 대한 전체적인 관점은 산출 지표뿐만 아니라 웰빙을 포괄해야 해.'),
      WordExample(english: 'The audit encompassed all departments, leaving no process unexamined.', korean: '감사는 모든 부서를 포괄했으며 검토되지 않은 프로세스가 없었어.'),
    ],
    'endure': [
      WordExample(english: 'Companies that endure over decades are those that consistently adapt without losing their core identity.', korean: '수십 년에 걸쳐 지속되는 기업들은 핵심 정체성을 잃지 않으면서 일관되게 적응하는 기업들이야.'),
      WordExample(english: 'The ability to endure short-term discomfort for long-term gain is a hallmark of strategic thinking.', korean: '장기적인 이익을 위해 단기적인 불편을 견뎌내는 능력이 전략적 사고의 특징이야.'),
      WordExample(english: 'Great brands endure because they stand for something beyond the products they sell.', korean: '훌륭한 브랜드들이 지속되는 이유는 그들이 판매하는 제품을 넘어 무언가를 대표하기 때문이야.'),
    ],
    'engender': [
      WordExample(english: 'Transparent communication engenders trust and reduces anxiety during periods of change.', korean: '투명한 소통은 신뢰를 낳고 변화의 시기에 불안을 줄여.'),
      WordExample(english: 'Inconsistent enforcement of policies engenders a sense of unfairness that undermines morale.', korean: '정책의 일관성 없는 집행은 사기를 약화시키는 불공정함의 감각을 낳아.'),
      WordExample(english: 'A culture of recognition engenders loyalty and reduces the desire to seek opportunities elsewhere.', korean: '인정의 문화는 충성심을 낳고 다른 곳에서 기회를 찾으려는 욕구를 줄여.'),
    ],
    'entail': [
      WordExample(english: 'Leadership entails not just directing work but developing the people who do it.', korean: '리더십은 업무를 지시하는 것뿐만 아니라 그 업무를 하는 사람들을 발전시키는 것도 수반해.'),
      WordExample(english: 'Any significant change entails a transition period — plan for it, don\'t be surprised by it.', korean: '어떤 중요한 변화도 전환 기간을 수반해, 그것을 계획해, 놀라지 말고.'),
      WordExample(english: 'Make sure everyone understands what the new role entails before the hiring process begins.', korean: '채용 과정이 시작되기 전에 모든 사람이 새 역할이 무엇을 수반하는지 이해하도록 해.'),
    ],
    'equivocal': [
      WordExample(english: 'The results were equivocal — positive signals were offset by several concerning data points.', korean: '결과는 모호했어, 긍정적인 신호들이 여러 우려스러운 데이터 포인트로 상쇄됐거든.'),
      WordExample(english: 'Avoid equivocal language in strategic communications — clarity of intent is a leadership responsibility.', korean: '전략적 소통에서 모호한 언어는 피해, 의도의 명확성은 리더십의 책임이야.'),
      WordExample(english: 'Her equivocal response to the question left the board uncertain about the company\'s actual direction.', korean: '그 질문에 대한 그녀의 모호한 대답은 이사회가 회사의 실제 방향에 대해 불확실하게 만들었어.'),
    ],
    'erode': [
      WordExample(english: 'Broken promises, even small ones, gradually erode the trust you have built over years.', korean: '작은 것이라도 지켜지지 않은 약속들이 수년에 걸쳐 쌓아온 신뢰를 서서히 침식해.'),
      WordExample(english: 'Regulatory uncertainty can erode investor confidence and slow long-term capital deployment.', korean: '규제 불확실성은 투자자 신뢰를 침식하고 장기 자본 배치를 늦출 수 있어.'),
      WordExample(english: 'Without continuous investment in culture, shared values erode as the organisation scales.', korean: '문화에 대한 지속적인 투자 없이는 조직이 성장함에 따라 공유 가치들이 침식돼.'),
    ],
    'esteem': [
      WordExample(english: 'She is held in high esteem by peers and clients alike for her integrity and expertise.', korean: '그녀는 성실성과 전문성으로 동료와 고객 모두에게 높이 존경받고 있어.'),
      WordExample(english: 'Recognising contributions publicly raises esteem and signals what behaviours are valued.', korean: '기여를 공개적으로 인정하면 존경심이 높아지고 어떤 행동이 가치 있는지를 알려줘.'),
      WordExample(english: 'Self-esteem and professional confidence are closely linked — invest in both for sustained performance.', korean: '자존감과 직업적 자신감은 밀접하게 연결되어 있어, 지속적인 성과를 위해 둘 다에 투자해.'),
    ],
    'ethics': [
      WordExample(english: 'Strong business ethics are not just morally right — they also protect the organisation\'s long-term reputation.', korean: '강한 사업 윤리는 도덕적으로 옳을 뿐만 아니라 조직의 장기적인 명성도 보호해.'),
      WordExample(english: 'When ethics and profitability conflict, the most enduring organisations choose ethics every time.', korean: '윤리와 수익성이 충돌할 때 가장 오래가는 조직들은 매번 윤리를 선택해.'),
      WordExample(english: 'Embed ethics into everyday decisions, not just codes of conduct that gather dust on shelves.', korean: '윤리를 선반에 먼지 쌓이는 행동 강령이 아닌 일상적인 결정에 내재화시켜.'),
    ],
    'evoke': [
      WordExample(english: 'Great brand storytelling evokes emotion and creates a lasting connection with the audience.', korean: '훌륭한 브랜드 스토리텔링은 감정을 불러일으키고 청중과 지속적인 연결을 만들어.'),
      WordExample(english: 'The presentation was designed to evoke curiosity and challenge the audience\'s assumptions.', korean: '그 발표는 호기심을 불러일으키고 청중의 가정에 도전하도록 설계됐어.'),
      WordExample(english: 'Numbers alone rarely evoke action — pair data with a compelling human story to drive change.', korean: '숫자만으로는 행동을 거의 불러일으키지 못해, 데이터를 설득력 있는 인간 이야기와 짝지어 변화를 이끌어봐.'),
    ],
    'exert': [
      WordExample(english: 'Influential leaders exert authority through trust and credibility, not positional power.', korean: '영향력 있는 리더들은 직위 권력이 아닌 신뢰와 신뢰성을 통해 권위를 발휘해.'),
      WordExample(english: 'External market pressures are exerting significant force on our pricing strategy.', korean: '외부 시장 압력이 우리의 가격 전략에 상당한 영향을 발휘하고 있어.'),
      WordExample(english: 'She exerted considerable effort to build bridges between the two rival factions in the organisation.', korean: '그녀는 조직 내 두 경쟁 파벌 사이에 교량을 구축하기 위해 상당한 노력을 발휘했어.'),
    ],
    'expedite': [
      WordExample(english: 'To expedite the approval process, submit all required documents in a single package.', korean: '승인 과정을 신속히 처리하려면 필요한 모든 서류를 하나의 패키지로 제출해.'),
      WordExample(english: 'Automating routine tasks can significantly expedite workflows and free capacity for higher-value work.', korean: '루틴 작업을 자동화하면 워크플로우를 크게 신속히 처리하고 고부가가치 작업을 위한 역량을 확보할 수 있어.'),
      WordExample(english: 'The crisis team was assembled to expedite the response and prevent further reputational damage.', korean: '위기 팀이 대응을 신속히 처리하고 추가적인 명성 손상을 예방하기 위해 구성됐어.'),
    ],
    'extol': [
      WordExample(english: 'Leaders who extol the virtues of collaboration must also model it in their own behaviour.', korean: '협력의 덕목을 극찬하는 리더들은 자신의 행동에서도 그것을 모범으로 보여야 해.'),
      WordExample(english: 'The keynote speaker extolled the power of failure as the most underrated learning tool in business.', korean: '기조 연설자는 실패의 힘을 사업에서 가장 저평가된 학습 도구로 극찬했어.'),
      WordExample(english: 'Rather than simply extolling past achievements, the report focused on what still needs to be done.', korean: '과거 성과를 단순히 극찬하는 것보다 보고서는 아직 해야 할 것에 초점을 맞췄어.'),
    ],
    'fabrication': [
      WordExample(english: 'Spreading a fabrication about a competitor is not just unethical — it is legally dangerous.', korean: '경쟁자에 대한 허위 사실을 퍼뜨리는 것은 비윤리적일 뿐만 아니라 법적으로도 위험해.'),
      WordExample(english: 'The investigation revealed that the financial reports contained deliberate fabrications.', korean: '조사는 재무 보고서에 의도적인 허위 사실이 포함되어 있음을 밝혀냈어.'),
      WordExample(english: 'In a data-driven culture, fabrication of results is the fastest way to destroy your credibility permanently.', korean: '데이터 중심 문화에서 결과의 조작은 신뢰성을 영구적으로 파괴하는 가장 빠른 방법이야.'),
    ],
    'fallacy': [
      WordExample(english: 'The sunk-cost fallacy leads teams to continue investing in failing projects out of emotional attachment.', korean: '매몰 비용의 오류는 팀들이 감정적인 집착 때문에 실패하는 프로젝트에 계속 투자하게 해.'),
      WordExample(english: 'Recognising logical fallacies in arguments helps you build more rigorous and persuasive cases.', korean: '논거에서 논리적 오류를 인식하는 것이 더 엄격하고 설득력 있는 주장을 구축하는 데 도움이 돼.'),
      WordExample(english: 'The idea that busyness equals productivity is a pervasive fallacy in many corporate cultures.', korean: '바쁨이 생산성과 같다는 생각은 많은 기업 문화에 만연한 오류야.'),
    ],
    'fatigue': [
      WordExample(english: 'Change fatigue sets in when organisations launch too many initiatives without allowing time to consolidate.', korean: '조직이 통합할 시간을 허용하지 않고 너무 많은 이니셔티브를 시작할 때 변화 피로가 생겨.'),
      WordExample(english: 'Meeting fatigue is a real productivity drain — audit your calendar and eliminate what isn\'t essential.', korean: '회의 피로는 실제 생산성 손실이야, 일정을 감사하고 필수적이지 않은 것은 없애봐.'),
      WordExample(english: 'Decision fatigue accumulates across a day, so tackle your highest-stakes choices in the morning.', korean: '결정 피로는 하루에 걸쳐 축적되기 때문에 가장 중요한 선택들은 아침에 해결해.'),
    ],
    'fidelity': [
      WordExample(english: 'High fidelity between strategy and execution is what separates successful transformations from failed ones.', korean: '전략과 실행 사이의 높은 충실도가 성공적인 변혁과 실패한 변혁을 구분해.'),
      WordExample(english: 'When presenting research, maintain fidelity to the data — don\'t let the narrative override the facts.', korean: '연구를 발표할 때 데이터에 충실해, 서사가 사실을 압도하지 않도록 해.'),
      WordExample(english: 'Brand fidelity — customers\' loyalty to a brand through thick and thin — is built through consistent delivery.', korean: '브랜드 충실도, 즉 어떤 상황에서도 브랜드에 대한 고객의 충성심은 일관된 제공을 통해 구축돼.'),
    ],
    'finite': [
      WordExample(english: 'Attention is a finite resource — be deliberate about where you direct it each day.', korean: '주의는 유한한 자원이야, 매일 어디에 집중할지에 대해 의도적이어봐.'),
      WordExample(english: 'Time and talent are finite, so prioritisation is not optional — it is a strategic necessity.', korean: '시간과 인재는 유한하기 때문에 우선순위 결정은 선택이 아닌 전략적 필수야.'),
      WordExample(english: 'A finite runway forces a startup to make sharper decisions about what truly matters most.', korean: '유한한 런웨이는 스타트업이 진정으로 가장 중요한 것에 대해 더 날카로운 결정을 내리게 해.'),
    ],
    'flawed': [
      WordExample(english: 'Even a flawed plan executed decisively often outperforms a perfect plan executed timidly.', korean: '결함이 있는 계획이라도 단호하게 실행되면 완벽한 계획이 소극적으로 실행되는 것보다 성과가 높은 경우가 많아.'),
      WordExample(english: 'Acknowledge when your initial thinking was flawed — it builds credibility rather than undermining it.', korean: '초기 사고가 결함이 있었을 때 인정해봐, 그것이 신뢰성을 약화시키는 것이 아니라 구축해.'),
      WordExample(english: 'A flawed incentive structure will produce flawed behaviours, no matter how talented the team is.', korean: '결함 있는 인센티브 구조는 팀이 아무리 재능이 있어도 결함 있는 행동을 만들어낼 거야.'),
    ],
    'forestall': [
      WordExample(english: 'Proactive communication can forestall the rumours and anxiety that accompany organisational change.', korean: '선제적인 소통은 조직 변화를 동반하는 소문과 불안을 미리 방지할 수 있어.'),
      WordExample(english: 'The legal team reviewed the contract to forestall any potential disputes down the line.', korean: '법무팀은 나중에 잠재적인 분쟁을 미리 방지하기 위해 계약서를 검토했어.'),
      WordExample(english: 'Early stakeholder engagement is the best way to forestall last-minute resistance to a project.', korean: '초기 이해관계자 참여가 프로젝트에 대한 막판 저항을 미리 방지하는 가장 좋은 방법이야.'),
    ],
    'forthright': [
      WordExample(english: 'A forthright leader shares difficult truths early rather than letting problems fester unaddressed.', korean: '솔직한 리더는 문제가 해결되지 않고 곪아가도록 두지 않고 일찍 어려운 진실을 공유해.'),
      WordExample(english: 'Being forthright about risks doesn\'t undermine confidence — it demonstrates thorough preparation.', korean: '위험에 대해 솔직한 것은 자신감을 약화시키지 않아, 오히려 철저한 준비를 보여줘.'),
      WordExample(english: 'She was forthright in her assessment: the project was behind schedule and needed immediate action.', korean: '그녀는 평가에서 솔직했어, 프로젝트가 일정보다 뒤처져 있고 즉각적인 조치가 필요하다고.'),
    ],
    'frugal': [
      WordExample(english: 'Being frugal with resources during growth phases protects the business when downturns arrive.', korean: '성장 단계에서 자원에 대해 검소한 것이 경기 침체가 왔을 때 사업을 보호해.'),
      WordExample(english: 'Frugal innovation — solving big problems with limited resources — often produces the most elegant solutions.', korean: '검소한 혁신, 즉 제한된 자원으로 큰 문제를 해결하는 것이 종종 가장 우아한 해결책을 만들어.'),
      WordExample(english: 'A frugal mindset in leadership sets a tone of discipline that ripples through the entire organisation.', korean: '리더십의 검소한 마음가짐은 전체 조직에 파급되는 규율의 분위기를 만들어.'),
    ],
    'futile': [
      WordExample(english: 'Attempting to control every outcome is futile — focus instead on building resilient systems.', korean: '모든 결과를 통제하려는 시도는 소용없어, 대신 회복력 있는 시스템 구축에 집중해.'),
      WordExample(english: 'Resistance to well-evidenced change is futile in the long run — adaptation is the only sustainable path.', korean: '근거가 충분한 변화에 대한 저항은 장기적으로 소용없어, 적응이 유일하게 지속 가능한 경로야.'),
      WordExample(english: 'It felt futile to keep raising the same concern at every meeting without any visible response.', korean: '어떤 눈에 보이는 반응도 없이 모든 회의에서 같은 우려를 계속 제기하는 것은 소용없다고 느껴졌어.'),
    ],
    'galvanize': [
      WordExample(english: 'A compelling vision can galvanize a team and sustain their energy through the hardest stretches.', korean: '설득력 있는 비전은 팀을 고무시키고 가장 힘든 시기를 통해 에너지를 유지시킬 수 있어.'),
      WordExample(english: 'The crisis galvanized the organisation into action and produced the fastest product launch in its history.', korean: '그 위기는 조직을 행동으로 고무시켜 역사상 가장 빠른 제품 출시를 만들어냈어.'),
      WordExample(english: 'Great leaders galvanize people not through fear but by connecting individual effort to shared purpose.', korean: '위대한 리더들은 두려움이 아닌 개인의 노력을 공유 목적과 연결함으로써 사람들을 고무시켜.'),
    ],

    // ── 151~200 ────────────────────────────────────────────────
    'governance': [
      WordExample(english: 'Strong governance structures ensure that decisions are made transparently and accountably.', korean: '강력한 거버넌스 구조는 결정이 투명하고 책임감 있게 이루어지도록 해.'),
      WordExample(english: 'Effective data governance is now as critical as financial governance for modern organisations.', korean: '효과적인 데이터 거버넌스는 이제 현대 조직에게 재무 거버넌스만큼 중요해.'),
      WordExample(english: 'Poor governance was identified as the root cause of the company\'s repeated compliance failures.', korean: '부실한 거버넌스가 회사의 반복적인 컴플라이언스 실패의 근본 원인으로 파악됐어.'),
    ],
    'groundbreaking': [
      WordExample(english: 'The research team published groundbreaking findings that reshaped the industry\'s understanding of the problem.', korean: '연구팀은 업계의 문제 이해를 재형성한 획기적인 연구 결과를 발표했어.'),
      WordExample(english: 'What feels groundbreaking today often becomes standard practice within a decade.', korean: '오늘 획기적으로 느껴지는 것이 10년 내에 표준 관행이 되는 경우가 많아.'),
      WordExample(english: 'The company\'s groundbreaking approach to remote work attracted talent from around the world.', korean: '원격 근무에 대한 회사의 획기적인 접근법이 전 세계의 인재를 끌어들였어.'),
    ],
    'hallmark': [
      WordExample(english: 'Intellectual curiosity is the hallmark of leaders who continue to grow throughout their careers.', korean: '지적 호기심이 경력 전반에 걸쳐 계속 성장하는 리더들의 특징이야.'),
      WordExample(english: 'Consistency is a hallmark of trust — people must be able to predict how you will behave under pressure.', korean: '일관성이 신뢰의 특징이야, 사람들은 압박 아래에서 당신이 어떻게 행동할지 예측할 수 있어야 해.'),
      WordExample(english: 'Attention to detail has always been a hallmark of their product design philosophy.', korean: '세부 사항에 대한 주의는 항상 그들의 제품 디자인 철학의 특징이었어.'),
    ],
    'harbinger': [
      WordExample(english: 'Declining employee engagement scores can be a harbinger of increased turnover if left unaddressed.', korean: '감소하는 직원 참여 점수는 해결되지 않으면 증가하는 이직의 전조가 될 수 있어.'),
      WordExample(english: 'Early adopters of a technology are often a harbinger of where mainstream demand is heading.', korean: '기술의 얼리 어답터들은 종종 주류 수요가 향하는 곳의 전조야.'),
      WordExample(english: 'A drop in customer satisfaction ratings is a harbinger of revenue problems six to nine months away.', korean: '고객 만족도 점수의 하락은 6~9개월 후 매출 문제의 전조야.'),
    ],
    'harmonize': [
      WordExample(english: 'The merger team worked to harmonize the two companies\' very different operational processes.', korean: '합병 팀은 두 회사의 매우 다른 운영 프로세스를 조화시키기 위해 노력했어.'),
      WordExample(english: 'Good leadership harmonizes individual ambitions with collective organisational goals.', korean: '좋은 리더십은 개인의 야망을 조직의 집단적 목표와 조화시켜.'),
      WordExample(english: 'The new policy was designed to harmonize working practices across all 12 regional offices.', korean: '새 정책은 12개의 모든 지역 사무소에서 업무 관행을 조화시키기 위해 설계됐어.'),
    ],
    'hegemony': [
      WordExample(english: 'The company\'s market hegemony made it slow to respond when nimble competitors emerged.', korean: '회사의 시장 패권은 민첩한 경쟁자들이 나타났을 때 대응을 느리게 했어.'),
      WordExample(english: 'Sustainable competitive advantage is preferable to short-term hegemony built on unsustainable practices.', korean: '지속 가능한 경쟁 우위가 지속 불가능한 관행으로 구축된 단기 패권보다 바람직해.'),
      WordExample(english: 'Technology shifts have repeatedly disrupted the hegemony of once-dominant industry players.', korean: '기술 전환은 한때 지배적인 업계 플레이어들의 패권을 반복적으로 파괴해왔어.'),
    ],
    'heterogeneous': [
      WordExample(english: 'A heterogeneous team brings diverse perspectives that lead to more robust and creative solutions.', korean: '이질적인 팀은 더 강건하고 창의적인 해결책으로 이어지는 다양한 관점을 가져와.'),
      WordExample(english: 'Managing a heterogeneous workforce requires flexibility and a deep respect for individual differences.', korean: '이질적인 인력을 관리하려면 유연성과 개인 차이에 대한 깊은 존중이 필요해.'),
      WordExample(english: 'The customer base is highly heterogeneous — a one-size-fits-all approach is unlikely to succeed.', korean: '고객 기반이 매우 이질적이어서 단일 접근법은 성공하기 어려울 거야.'),
    ],
    'hubris': [
      WordExample(english: 'Corporate hubris — the belief that past success guarantees future dominance — has felled many giants.', korean: '기업 오만, 즉 과거의 성공이 미래의 지배를 보장한다는 믿음이 많은 거물들을 쓰러뜨렸어.'),
      WordExample(english: 'Guard against hubris by actively seeking out dissenting views and stress-testing your assumptions.', korean: '반대 견해를 적극적으로 찾고 가정을 스트레스 테스트함으로써 오만을 경계해.'),
      WordExample(english: 'His hubris blinded him to the warning signs that the strategy was failing until it was too late.', korean: '그의 오만함이 전략이 실패하고 있다는 경고 신호를 너무 늦을 때까지 보지 못하게 했어.'),
    ],
    'idiosyncratic': [
      WordExample(english: 'Her idiosyncratic leadership style was unconventional but consistently produced exceptional results.', korean: '그녀의 특이한 리더십 스타일은 전통적이지 않았지만 일관되게 탁월한 결과를 만들어냈어.'),
      WordExample(english: 'Each market has idiosyncratic characteristics that require a locally adapted strategy.', korean: '각 시장은 현지에 맞게 조정된 전략이 필요한 특이한 특성들이 있어.'),
      WordExample(english: 'Idiosyncratic risk can be mitigated through diversification, while systemic risk cannot.', korean: '특이한 위험은 분산투자를 통해 완화될 수 있지만 체계적 위험은 그렇지 않아.'),
    ],
    'immutable': [
      WordExample(english: 'Some core values should be immutable — they define who you are, regardless of external pressures.', korean: '일부 핵심 가치들은 불변이어야 해, 그것들은 외부 압력에 관계없이 당신이 누구인지를 정의해.'),
      WordExample(english: 'In a fast-changing environment, distinguish between what is immutable and what must evolve.', korean: '빠르게 변하는 환경에서 불변인 것과 진화해야 하는 것을 구별해.'),
      WordExample(english: 'The team learned that no competitive advantage is truly immutable — continuous reinvention is required.', korean: '팀은 어떤 경쟁 우위도 진정으로 불변이 아니라는 것을 배웠어, 지속적인 재창조가 필요해.'),
    ],
    'impede': [
      WordExample(english: 'Excessive bureaucracy can impede the speed of decision-making in ways that damage competitiveness.', korean: '과도한 관료주의는 경쟁력을 손상시키는 방식으로 의사 결정 속도를 방해할 수 있어.'),
      WordExample(english: 'Unclear role boundaries impede collaboration and create unnecessary friction between teams.', korean: '불명확한 역할 경계는 협력을 방해하고 팀 간에 불필요한 마찰을 만들어.'),
      WordExample(english: 'Do not let fear of failure impede the experimentation that leads to breakthrough innovation.', korean: '실패에 대한 두려움이 혁신적인 혁신으로 이어지는 실험을 방해하지 않도록 해.'),
    ],
    'impetus': [
      WordExample(english: 'The competitive threat provided the impetus for an overdue digital transformation programme.', korean: '경쟁 위협이 오래 지연된 디지털 전환 프로그램을 위한 자극이 됐어.'),
      WordExample(english: 'Customer feedback was the impetus that finally convinced leadership to redesign the onboarding flow.', korean: '고객 피드백이 리더십이 온보딩 플로우를 재설계하도록 마침내 설득한 자극이었어.'),
      WordExample(english: 'Use the energy of a new role as the impetus to establish habits that will sustain your long-term success.', korean: '새로운 역할의 에너지를 장기적인 성공을 유지할 습관을 확립하기 위한 자극으로 활용해.'),
    ],
    'inadvertent': [
      WordExample(english: 'An inadvertent miscommunication at the leadership level created weeks of confusion across the organisation.', korean: '리더십 수준에서의 부주의한 오해가 조직 전체에 몇 주간의 혼란을 만들었어.'),
      WordExample(english: 'Be mindful that inadvertent bias in recruitment can shape a team\'s culture for years.', korean: '채용에서의 부주의한 편견이 팀의 문화를 수년간 형성할 수 있다는 점을 유의해.'),
      WordExample(english: 'The policy change had inadvertent consequences for frontline staff that leadership had not anticipated.', korean: '정책 변화는 리더십이 예상하지 못한 일선 직원들에 대한 부주의한 결과를 낳았어.'),
    ],
    'indifference': [
      WordExample(english: 'Leadership indifference to employee wellbeing is one of the fastest ways to erode organisational trust.', korean: '직원 웰빙에 대한 리더십의 무관심은 조직적 신뢰를 침식하는 가장 빠른 방법 중 하나야.'),
      WordExample(english: 'Customer indifference is more damaging than customer complaints — at least complaints show engagement.', korean: '고객 무관심은 고객 불만보다 더 해로워, 적어도 불만은 참여를 보여주거든.'),
      WordExample(english: 'Her indifference to the team\'s concerns signalled a lack of empathy that cost her their loyalty.', korean: '팀의 우려에 대한 그녀의 무관심은 공감 부족을 나타냈고 그것이 그들의 충성심을 잃게 했어.'),
    ],
    'inertia': [
      WordExample(english: 'Organisational inertia — the tendency to keep doing things as they have always been done — kills innovation.', korean: '조직 관성, 즉 항상 해왔던 대로 계속하려는 경향이 혁신을 죽여.'),
      WordExample(english: 'Overcoming inertia requires a compelling reason to change and visible support from the top.', korean: '관성을 극복하려면 변화해야 할 설득력 있는 이유와 최고 위층으로부터의 가시적인 지지가 필요해.'),
      WordExample(english: 'The startup\'s agility was its biggest advantage over incumbents paralysed by inertia.', korean: '스타트업의 민첩성이 관성에 마비된 기존 업체들에 대한 가장 큰 이점이었어.'),
    ],
    'inflict': [
      WordExample(english: 'Poor leadership can inflict lasting damage on team morale that takes years to repair.', korean: '나쁜 리더십은 수년이 걸려 회복하는 팀 사기에 지속적인 피해를 줄 수 있어.'),
      WordExample(english: 'Avoid inflicting unnecessary change on teams that are already delivering strong results.', korean: '이미 강한 결과를 내고 있는 팀에 불필요한 변화를 부과하는 것은 피해.'),
      WordExample(english: 'Rushed decisions inflict costs that compound over time and are hard to reverse.', korean: '서두른 결정은 시간이 지남에 따라 복리로 늘어나고 되돌리기 어려운 비용을 부과해.'),
    ],
    'inhibit': [
      WordExample(english: 'Fear of judgment can inhibit people from sharing their most creative and unconventional ideas.', korean: '판단에 대한 두려움이 사람들이 가장 창의적이고 색다른 아이디어를 공유하는 것을 억제할 수 있어.'),
      WordExample(english: 'Siloed structures inhibit the cross-functional collaboration that complex problems require.', korean: '사일로 구조는 복잡한 문제가 필요로 하는 부서 간 협력을 억제해.'),
      WordExample(english: 'An overly rigid approval process inhibits speed and discourages initiative at all levels.', korean: '지나치게 엄격한 승인 프로세스는 속도를 억제하고 모든 수준에서 이니셔티브를 저해해.'),
    ],
    'innate': [
      WordExample(english: 'While some people have an innate talent for communication, it is a skill everyone can develop.', korean: '일부 사람들은 소통에 대한 타고난 재능이 있지만 그것은 모든 사람이 개발할 수 있는 기술이야.'),
      WordExample(english: 'Great coaches believe that the desire to grow and improve is innate in most people.', korean: '훌륭한 코치들은 성장하고 개선하려는 욕구가 대부분의 사람들에게 타고난 것이라고 믿어.'),
      WordExample(english: 'Her innate curiosity about people made her an outstanding interviewer and talent identifier.', korean: '사람들에 대한 그녀의 타고난 호기심이 그녀를 뛰어난 인터뷰어이자 인재 발굴자로 만들었어.'),
    ],
    'instigate': [
      WordExample(english: 'She chose to instigate a difficult conversation about team dynamics rather than let tensions build.', korean: '그녀는 긴장이 쌓이도록 두지 않고 팀 역학에 관한 어려운 대화를 시작하기로 했어.'),
      WordExample(english: 'Leaders must be willing to instigate change even when it is unpopular in the short term.', korean: '리더들은 단기적으로 인기가 없더라도 변화를 시작할 의지가 있어야 해.'),
      WordExample(english: 'The whistleblower instigated an internal review that ultimately saved the company from a major scandal.', korean: '내부 고발자가 결국 회사를 큰 스캔들로부터 구해낸 내부 검토를 시작했어.'),
    ],
    'intangible': [
      WordExample(english: 'Culture and reputation are intangible assets, but they drive tangible competitive advantage.', korean: '문화와 명성은 무형 자산이지만 유형의 경쟁 우위를 이끌어.'),
      WordExample(english: 'The intangible benefits of psychological safety — creativity, candour, innovation — are difficult to quantify but undeniable.', korean: '심리적 안전의 무형적 이점인 창의성, 솔직함, 혁신은 정량화하기 어렵지만 부정할 수 없어.'),
      WordExample(english: 'Sometimes the most important outcomes of a project are intangible: confidence, trust, and shared learning.', korean: '때로는 프로젝트의 가장 중요한 결과가 무형적이야, 자신감, 신뢰, 공유 학습이지.'),
    ],
    'interdependence': [
      WordExample(english: 'The interdependence of global supply chains became starkly clear during recent disruptions.', korean: '글로벌 공급망의 상호의존성이 최근의 혼란 동안 뚜렷하게 분명해졌어.'),
      WordExample(english: 'Understanding the interdependence of different teams prevents decisions that optimise one area at the expense of another.', korean: '다른 팀들의 상호의존성을 이해하면 한 영역을 다른 영역의 희생으로 최적화하는 결정을 방지해.'),
      WordExample(english: 'The interdependence of wellbeing and performance means you cannot sustainably sacrifice one for the other.', korean: '웰빙과 성과의 상호의존성은 하나를 다른 것을 위해 지속 가능하게 희생할 수 없다는 것을 의미해.'),
    ],
    'intermittent': [
      WordExample(english: 'Intermittent recognition is less effective than consistent appreciation for building sustained motivation.', korean: '지속적인 동기 부여를 구축하는 데 있어 간헐적인 인정은 일관된 감사보다 덜 효과적이야.'),
      WordExample(english: 'The team experienced intermittent system outages that pointed to an underlying infrastructure problem.', korean: '팀은 기반 인프라 문제를 지적하는 간헐적인 시스템 중단을 경험했어.'),
      WordExample(english: 'Intermittent feedback leaves employees uncertain about their performance — make it regular and specific.', korean: '간헐적인 피드백은 직원들이 성과에 대해 불확실하게 해, 정기적이고 구체적으로 만들어봐.'),
    ],
    'intransigent': [
      WordExample(english: 'An intransigent negotiating position often leads to worse outcomes than principled flexibility would.', korean: '완강한 협상 입장은 원칙적인 유연성보다 종종 더 나쁜 결과로 이어져.'),
      WordExample(english: 'When a stakeholder becomes intransigent, explore the underlying interest rather than debating positions.', korean: '이해관계자가 완강해지면 입장을 논쟁하는 것보다 기저의 관심사를 탐색해봐.'),
      WordExample(english: 'His intransigent refusal to consider alternatives slowed the project by months.', korean: '대안을 고려하기를 완강히 거부한 그의 태도가 프로젝트를 몇 달 늦췄어.'),
    ],
    'invalidate': [
      WordExample(english: 'New evidence can invalidate a previously held assumption — update your models when data changes.', korean: '새로운 증거는 이전에 가졌던 가정을 무효화할 수 있어, 데이터가 변하면 모델을 업데이트해.'),
      WordExample(english: 'Do not invalidate someone\'s concerns — even if you disagree, acknowledging them builds trust.', korean: '누군가의 우려를 무효화하지 마, 동의하지 않더라도 인정하는 것이 신뢰를 구축해.'),
      WordExample(english: 'A single major breach can invalidate years of carefully cultivated customer trust.', korean: '하나의 주요 침해가 수년간 신중하게 배양된 고객 신뢰를 무효화할 수 있어.'),
    ],
    'irrefutable': [
      WordExample(english: 'Present irrefutable evidence when proposing significant change — assumptions are not enough.', korean: '중요한 변화를 제안할 때 반박할 수 없는 증거를 제시해, 가정만으로는 충분하지 않아.'),
      WordExample(english: 'The data made an irrefutable case for restructuring the customer service team immediately.', korean: '데이터는 고객 서비스 팀을 즉시 재구성해야 한다는 반박할 수 없는 사례를 만들었어.'),
      WordExample(english: 'Her irrefutable track record of delivery gave her the credibility to push through the most ambitious changes.', korean: '성과에 대한 그녀의 반박할 수 없는 실적이 가장 야심 찬 변화들을 밀어붙일 신뢰성을 줬어.'),
    ],
    'juxtapose': [
      WordExample(english: 'Juxtaposing the current state with the desired future state makes the need for change viscerally clear.', korean: '현재 상태와 원하는 미래 상태를 병치시키면 변화의 필요성이 직관적으로 명확해져.'),
      WordExample(english: 'The presentation juxtaposed competitor performance with our own to highlight the gap we needed to close.', korean: '발표는 우리가 좁혀야 할 격차를 강조하기 위해 경쟁사 성과와 우리 자신의 성과를 병치시켰어.'),
      WordExample(english: 'Juxtaposing two opposing approaches helped the team appreciate the trade-offs more clearly.', korean: '두 가지 상반된 접근법을 병치시키는 것이 팀이 절충점을 더 명확하게 인식하는 데 도움이 됐어.'),
    ],
    'lament': [
      WordExample(english: 'Rather than lament the resources you lack, focus on what is possible with what you have.', korean: '부족한 자원을 한탄하기보다 가진 것으로 가능한 것에 집중해봐.'),
      WordExample(english: 'Many leaders lament the pace of change but fail to invest in the capabilities needed to keep up.', korean: '많은 리더들이 변화의 속도를 한탄하지만 따라잡는 데 필요한 역량에 투자하지 않아.'),
      WordExample(english: 'It is far more productive to learn from a failure than to lament it.', korean: '실패로부터 배우는 것이 그것을 한탄하는 것보다 훨씬 더 생산적이야.'),
    ],
    'latent': [
      WordExample(english: 'Great managers have a talent for recognising the latent potential in people others have overlooked.', korean: '훌륭한 관리자들은 다른 사람들이 간과한 사람들의 잠재적인 가능성을 인식하는 재능이 있어.'),
      WordExample(english: 'Customer research often surfaces latent needs — things people want but haven\'t yet articulated.', korean: '고객 조사는 종종 잠재적인 필요, 즉 사람들이 원하지만 아직 표현하지 않은 것들을 드러내.'),
      WordExample(english: 'Address latent conflicts in a team before they surface as crises during high-pressure moments.', korean: '팀의 잠재적인 갈등이 고압적인 순간에 위기로 표면화되기 전에 해결해.'),
    ],
    'lethargic': [
      WordExample(english: 'A lethargic culture — slow to decide, slow to act — is a liability in fast-moving markets.', korean: '결정이 느리고 행동이 느린 무기력한 문화는 빠르게 움직이는 시장에서 부채야.'),
      WordExample(english: 'The team had grown lethargic after a period of unchallenged market dominance.', korean: '팀은 도전받지 않는 시장 지배의 기간 이후 무기력해졌어.'),
      WordExample(english: 'A lethargic response to customer complaints quickly escalates small issues into major reputational damage.', korean: '고객 불만에 대한 무기력한 대응은 작은 문제를 주요 명성 피해로 빠르게 확대해.'),
    ],
    'lucid': [
      WordExample(english: 'A lucid explanation of the strategy at every level of the organisation dramatically improves execution.', korean: '조직의 모든 수준에서 전략에 대한 명료한 설명이 실행을 극적으로 개선해.'),
      WordExample(english: 'His lucid writing style made even the most complex technical content accessible to a general audience.', korean: '그의 명료한 글쓰기 스타일은 가장 복잡한 기술적 내용조차 일반 청중이 접근할 수 있게 했어.'),
      WordExample(english: 'Be lucid about what success looks like before a project starts, not only after it ends.', korean: '프로젝트가 끝난 후에만이 아니라 시작하기 전에 성공이 어떻게 보이는지에 대해 명료해봐.'),
    ],
    'malevolent': [
      WordExample(english: 'Most resistance to change is not malevolent — it stems from fear, not bad intent.', korean: '대부분의 변화 저항은 악의적이지 않아, 나쁜 의도가 아닌 두려움에서 비롯돼.'),
      WordExample(english: 'Assuming malevolent motives in a colleague damages trust and closes the door to constructive dialogue.', korean: '동료에게 악의적인 동기가 있다고 가정하면 신뢰를 손상시키고 건설적인 대화의 문을 닫아.'),
      WordExample(english: 'The investigation found no malevolent intent — the errors were the result of poor system design.', korean: '조사는 악의적인 의도가 없다는 것을 발견했어, 오류는 나쁜 시스템 설계의 결과였어.'),
    ],
    'malleable': [
      WordExample(english: 'A growth mindset treats intelligence as malleable — abilities are built through effort and experience.', korean: '성장 마인드셋은 지능을 가소적인 것으로 다뤄, 능력은 노력과 경험을 통해 만들어지거든.'),
      WordExample(english: 'Early-stage strategy should be malleable — commit to direction but stay flexible on approach.', korean: '초기 단계 전략은 가소적이어야 해, 방향에 헌신하되 접근법에 유연하게 유지해.'),
      WordExample(english: 'New hires are often more malleable in terms of habits and culture — onboard them thoughtfully.', korean: '신입 직원들은 종종 습관과 문화 면에서 더 가소적이야, 그들을 신중하게 온보딩해.'),
    ],
    'meager': [
      WordExample(english: 'The team delivered impressive results despite meager resources — a testament to their creativity.', korean: '팀은 부족한 자원에도 불구하고 인상적인 결과를 냈어, 그들의 창의성을 증명하는 거야.'),
      WordExample(english: 'Meager investment in development signals to employees that their growth is not a priority.', korean: '개발에 대한 빈약한 투자는 직원들에게 그들의 성장이 우선순위가 아니라는 신호를 보내.'),
      WordExample(english: 'When resources are meager, clarity of focus becomes even more important — do fewer things better.', korean: '자원이 빈약할 때 집중의 명확성이 훨씬 더 중요해져, 더 적은 것을 더 잘해봐.'),
    ],
    'methodical': [
      WordExample(english: 'A methodical approach to problem-solving reduces errors and produces more reliable outcomes.', korean: '문제 해결에 대한 체계적인 접근법은 오류를 줄이고 더 신뢰할 수 있는 결과를 만들어.'),
      WordExample(english: 'She was methodical in her preparation — leaving nothing to chance before the board presentation.', korean: '그녀는 준비에 있어 체계적이었어, 이사회 발표 전에 어떤 것도 우연에 맡기지 않았어.'),
      WordExample(english: 'Being methodical does not mean being slow — it means being thorough where it matters most.', korean: '체계적이라는 것이 느리다는 것을 의미하는 게 아니야, 가장 중요한 곳에서 철저하다는 것을 의미해.'),
    ],
    'militant': [
      WordExample(english: 'Militant advocacy for a single solution can shut down the creative exploration of better alternatives.', korean: '단일 해결책에 대한 전투적인 옹호는 더 나은 대안의 창의적 탐색을 차단할 수 있어.'),
      WordExample(english: 'A militant tone in negotiations often hardens resistance rather than persuading the other side.', korean: '협상에서의 전투적인 어조는 상대방을 설득하기보다 종종 저항을 굳게 만들어.'),
      WordExample(english: 'While passion for quality is valuable, a militant pursuit of perfection can paralyse progress.', korean: '품질에 대한 열정은 가치 있지만 완벽에 대한 전투적인 추구는 진전을 마비시킬 수 있어.'),
    ],
    'monotonous': [
      WordExample(english: 'Automating monotonous tasks frees people for higher-value, more meaningful work.', korean: '단조로운 작업을 자동화하면 사람들이 고부가가치의 더 의미 있는 일을 할 수 있게 돼.'),
      WordExample(english: 'A monotonous meeting agenda kills energy — vary formats and invite active participation.', korean: '단조로운 회의 의제는 에너지를 죽여, 형식을 다양화하고 적극적인 참여를 초대해봐.'),
      WordExample(english: 'Even passionate professionals find certain tasks monotonous — acknowledging this builds credibility.', korean: '열정적인 전문가들도 특정 작업을 단조롭다고 느껴, 이것을 인정하는 것이 신뢰성을 구축해.'),
    ],
    'multitude': [
      WordExample(english: 'A multitude of small improvements can collectively outweigh a single large breakthrough.', korean: '다수의 작은 개선이 집합적으로 하나의 큰 획기적인 돌파구를 능가할 수 있어.'),
      WordExample(english: 'The decision affects a multitude of stakeholders — map them all before you act.', korean: '그 결정은 다수의 이해관계자들에게 영향을 미쳐, 행동하기 전에 모두를 파악해봐.'),
      WordExample(english: 'Strong brand awareness opens a multitude of commercial opportunities that would otherwise be inaccessible.', korean: '강한 브랜드 인지도는 그렇지 않으면 접근할 수 없는 다수의 상업적 기회를 열어.'),
    ],
    'negate': [
      WordExample(english: 'One poor customer interaction can negate the positive impression created by months of good service.', korean: '하나의 나쁜 고객 상호작용이 몇 달의 좋은 서비스로 만들어진 긍정적인 인상을 무효화할 수 있어.'),
      WordExample(english: 'Unclear accountability can negate even the most carefully designed incentive structure.', korean: '불명확한 책임이 아무리 신중하게 설계된 인센티브 구조도 무효화할 수 있어.'),
      WordExample(english: 'Diversify your risk portfolio so that one bad outcome does not negate an entire year of gains.', korean: '하나의 나쁜 결과가 1년 전체의 수익을 무효화하지 않도록 위험 포트폴리오를 다양화해.'),
    ],
    'negligence': [
      WordExample(english: 'Negligence in data security is no longer a minor oversight — it carries severe legal and reputational consequences.', korean: '데이터 보안에서의 태만은 더 이상 사소한 실수가 아니야, 심각한 법적 및 명성적 결과를 수반해.'),
      WordExample(english: 'Proactive risk management is the antidote to negligence — identify and address threats before they become crises.', korean: '선제적인 위험 관리가 태만의 해독제야, 위협이 위기가 되기 전에 파악하고 해결해.'),
      WordExample(english: 'Negligence in onboarding new hires increases early attrition and wastes significant recruitment investment.', korean: '신입 직원 온보딩에서의 태만은 초기 이직을 증가시키고 상당한 채용 투자를 낭비해.'),
    ],
    'neutralize': [
      WordExample(english: 'Strong communication can neutralize the uncertainty that accompanies major organisational changes.', korean: '강력한 소통은 주요 조직 변화를 동반하는 불확실성을 중화할 수 있어.'),
      WordExample(english: 'The company invested in scenario planning to neutralize the impact of foreseeable external risks.', korean: '회사는 예측 가능한 외부 위험의 영향을 중화하기 위해 시나리오 계획에 투자했어.'),
      WordExample(english: 'Address criticism with data and humility to neutralize it rather than inflame it further.', korean: '비판을 더 불러일으키기보다 중화하기 위해 데이터와 겸손으로 대응해.'),
    ],
    'obsolescence': [
      WordExample(english: 'Planned obsolescence may boost short-term sales but damages long-term brand trust.', korean: '계획적 진부화는 단기 판매를 증대시킬 수 있지만 장기적인 브랜드 신뢰를 손상시켜.'),
      WordExample(english: 'Continuous learning is the best defence against skill obsolescence in a rapidly evolving job market.', korean: '지속적인 학습이 빠르게 진화하는 일자리 시장에서 기술 진부화에 대한 최선의 방어야.'),
      WordExample(english: 'Organisations that ignore technological change face the risk of strategic obsolescence within a decade.', korean: '기술 변화를 무시하는 조직들은 10년 내에 전략적 진부화의 위험에 직면해.'),
    ],
    'omnipresent': [
      WordExample(english: 'In the digital age, customer expectations of omnipresent service — any time, any channel — are rising fast.', korean: '디지털 시대에 어떤 시간이든 어떤 채널이든 어디에나 있는 서비스에 대한 고객 기대가 빠르게 높아지고 있어.'),
      WordExample(english: 'Data is becoming omnipresent in decision-making — leaders who ignore it cede advantage to those who don\'t.', korean: '데이터가 의사 결정에서 어디에나 존재하게 되고 있어, 그것을 무시하는 리더들은 그렇지 않은 사람들에게 이점을 양보해.'),
      WordExample(english: 'The brand\'s omnipresent advertising campaign made it the first name customers recalled in the category.', korean: '브랜드의 어디에나 있는 광고 캠페인이 그것을 고객들이 해당 카테고리에서 가장 먼저 떠올리는 이름으로 만들었어.'),
    ],
    'opaque': [
      WordExample(english: 'Opaque decision-making processes erode trust and fuel speculation about hidden agendas.', korean: '불투명한 의사 결정 과정은 신뢰를 침식하고 숨겨진 의제에 대한 추측을 불러일으켜.'),
      WordExample(english: 'Simplify opaque policies — if employees can\'t understand the rules, they can\'t follow them consistently.', korean: '불투명한 정책을 단순화해, 직원들이 규칙을 이해할 수 없으면 일관되게 따를 수 없어.'),
      WordExample(english: 'The pricing model was so opaque that customers lost confidence and began exploring competitors.', korean: '가격 모델이 너무 불투명해서 고객들이 자신감을 잃고 경쟁자들을 탐색하기 시작했어.'),
    ],
    'orchestrate': [
      WordExample(english: 'The COO\'s job is to orchestrate the operational machinery that delivers the CEO\'s strategic vision.', korean: 'COO의 역할은 CEO의 전략적 비전을 실현하는 운영 기계를 조율하는 거야.'),
      WordExample(english: 'She orchestrated a cross-functional sprint that solved in two weeks a problem that had stalled for months.', korean: '그녀는 몇 달 동안 정체됐던 문제를 2주 만에 해결한 부서 간 스프린트를 조율했어.'),
      WordExample(english: 'Successful change management requires someone with the skills to orchestrate dozens of interdependent workstreams.', korean: '성공적인 변화 관리는 수십 개의 상호의존적인 업무 흐름을 조율하는 기술을 가진 사람이 필요해.'),
    ],
    'oscillate': [
      WordExample(english: 'Organisations that oscillate between centralisation and decentralisation often gain the benefits of neither.', korean: '중앙집권화와 분권화 사이를 오가는 조직들은 종종 둘 다의 이익을 얻지 못해.'),
      WordExample(english: 'Market sentiment can oscillate rapidly — build strategies that perform well across different scenarios.', korean: '시장 심리는 빠르게 오갈 수 있어, 다양한 시나리오에서 잘 작동하는 전략을 구축해.'),
      WordExample(english: 'His leadership style seemed to oscillate between micromanagement and disengagement, unsettling the team.', korean: '그의 리더십 스타일은 세세한 관리와 무관여 사이를 오가는 것처럼 보여 팀을 불안정하게 했어.'),
    ],
    'overt': [
      WordExample(english: 'Overt recognition of good work reinforces the behaviours and values you want to cultivate.', korean: '좋은 업무에 대한 공개적인 인정이 당신이 함양하고자 하는 행동과 가치를 강화해.'),
      WordExample(english: 'Make the criteria for success overt and transparent — hidden rules create unfair disadvantages.', korean: '성공의 기준을 공개적이고 투명하게 만들어, 숨겨진 규칙은 불공평한 불이익을 만들어.'),
      WordExample(english: 'Overt commitment from senior leadership is the single most important driver of successful culture change.', korean: '시니어 리더십의 공개적인 헌신이 성공적인 문화 변화의 가장 중요한 단일 동인이야.'),
    ],
    'overwhelm': [
      WordExample(english: 'Too many priorities overwhelm teams and result in mediocre execution across the board.', korean: '너무 많은 우선순위가 팀을 압도하고 전반적으로 평범한 실행을 초래해.'),
      WordExample(english: 'Break large projects into phases to prevent teams from feeling overwhelmed by the full scope.', korean: '팀이 전체 범위에 압도당하는 느낌을 방지하기 위해 대형 프로젝트를 단계로 나눠.'),
      WordExample(english: 'Cognitive overwhelm leads to poorer decisions — create space and time for thinking before acting.', korean: '인지적 압도는 더 나쁜 결정으로 이어져, 행동하기 전에 생각할 공간과 시간을 만들어.'),
    ],
    'painstaking': [
      WordExample(english: 'The painstaking research behind the report made its conclusions difficult to challenge.', korean: '보고서 뒤의 세심한 연구가 그 결론을 반박하기 어렵게 만들었어.'),
      WordExample(english: 'Painstaking attention to customer experience is what converts first-time buyers into loyal advocates.', korean: '고객 경험에 대한 세심한 주의가 첫 구매자를 충성스러운 지지자로 전환하는 거야.'),
      WordExample(english: 'Through painstaking iteration, the team transformed a rough concept into a polished, market-ready product.', korean: '세심한 반복 작업을 통해 팀은 거친 개념을 세련되고 시장 준비된 제품으로 변환했어.'),
    ],
    'partisan': [
      WordExample(english: 'Avoid taking a partisan stance in internal debates — your role as a leader is to find the best path, not win the argument.', korean: '내부 토론에서 당파적인 입장을 취하는 것은 피해, 리더로서 당신의 역할은 논쟁에서 이기는 것이 아니라 최선의 길을 찾는 거야.'),
      WordExample(english: 'Partisan behaviour in cross-functional meetings signals to the organisation that silos are more important than shared goals.', korean: '부서 간 회의에서의 당파적인 행동은 조직에게 사일로가 공유 목표보다 더 중요하다는 신호를 보내.'),
      WordExample(english: 'A leader who is openly partisan loses the trust of those who hold different views within the team.', korean: '공개적으로 당파적인 리더는 팀 내에서 다른 견해를 가진 사람들의 신뢰를 잃어.'),
    ],
    'perpetuate': [
      WordExample(english: 'Rewarding results over behaviour can perpetuate a toxic culture even as it delivers short-term numbers.', korean: '행동보다 결과를 보상하는 것은 단기적인 수치를 달성하면서도 독성 문화를 영속화할 수 있어.'),
      WordExample(english: 'Unconscious bias in hiring can perpetuate homogeneity and limit the diversity of thought a team needs.', korean: '채용에서의 무의식적 편견은 동질성을 영속화하고 팀이 필요로 하는 사고의 다양성을 제한할 수 있어.'),
      WordExample(english: 'Silence in the face of poor behaviour perpetuates it — speak up early, and clearly.', korean: '나쁜 행동에 직면한 침묵은 그것을 영속화해, 일찍 그리고 명확하게 발언해.'),
    ],

    // ── 201~243 ────────────────────────────────────────────────
    'pervasive': [
      WordExample(english: 'A pervasive culture of accountability drives performance far more effectively than top-down monitoring.', korean: '광범위한 책임감 문화가 하향식 모니터링보다 훨씬 더 효과적으로 성과를 이끌어.'),
      WordExample(english: 'The impact of remote work has been pervasive — reshaping everything from culture to real-estate strategy.', korean: '원격 근무의 영향은 광범위해, 문화에서 부동산 전략까지 모든 것을 재형성하고 있어.'),
      WordExample(english: 'Pervasive distrust within a team is one of the most expensive problems a leader can face.', korean: '팀 내의 광범위한 불신은 리더가 직면할 수 있는 가장 비용이 많이 드는 문제 중 하나야.'),
    ],
    'pinnacle': [
      WordExample(english: 'Reaching the pinnacle of your career requires sustained effort, not just a single great performance.', korean: '경력의 정점에 이르려면 단 한 번의 훌륭한 성과가 아닌 지속적인 노력이 필요해.'),
      WordExample(english: 'The product launch was the pinnacle of three years of relentless development work.', korean: '그 제품 출시는 3년간의 끊임없는 개발 작업의 정점이었어.'),
      WordExample(english: 'Even at the pinnacle of success, the best leaders remain curious, humble, and open to learning.', korean: '성공의 정점에서도 최고의 리더들은 호기심 있고 겸손하며 배움에 개방적으로 유지해.'),
    ],
    'pivotal': [
      WordExample(english: 'The decision to enter the Asian market proved pivotal to the company\'s long-term trajectory.', korean: '아시아 시장에 진입하기로 한 결정은 회사의 장기적인 궤도에 있어 중추적인 것으로 판명됐어.'),
      WordExample(english: 'She played a pivotal role in the turnaround, driving the changes that others were afraid to make.', korean: '그녀는 회복에 있어 중추적인 역할을 했어, 다른 사람들이 하기 두려워했던 변화들을 이끌면서.'),
      WordExample(english: 'The next six months will be pivotal — the choices made now will define the company for the next decade.', korean: '향후 6개월이 중추적일 거야, 지금 이루어지는 선택들이 향후 10년 동안 회사를 정의할 거야.'),
    ],
    'plethora': [
      WordExample(english: 'A plethora of initiatives without clear prioritisation leads to effort fragmentation and mediocre results.', korean: '명확한 우선순위 결정 없이 수많은 이니셔티브가 있으면 노력 분산과 평범한 결과로 이어져.'),
      WordExample(english: 'The market now offers a plethora of tools for collaboration — the challenge is choosing the right ones.', korean: '시장은 이제 협업을 위한 수많은 도구를 제공해, 도전 과제는 적절한 것을 선택하는 거야.'),
      WordExample(english: 'A plethora of options can be as paralyzing as having none — narrow the field before deciding.', korean: '수많은 옵션이 아무것도 없는 것만큼이나 마비적일 수 있어, 결정하기 전에 범위를 좁혀봐.'),
    ],
    'polarization': [
      WordExample(english: 'Increasing polarization of opinion within teams makes inclusive decision-making more difficult but more important.', korean: '팀 내 의견의 증가하는 양극화는 포용적인 의사 결정을 더 어렵게 하지만 더 중요하게 만들어.'),
      WordExample(english: 'The leader worked to reduce polarization by creating forums where opposing views could be heard respectfully.', korean: '리더는 반대 견해가 존중적으로 들릴 수 있는 포럼을 만들어 양극화를 줄이기 위해 노력했어.'),
      WordExample(english: 'Polarization of the customer base signalled that a single product strategy would no longer work.', korean: '고객 기반의 양극화는 단일 제품 전략이 더 이상 통하지 않을 것이라는 신호였어.'),
    ],
    'precarious': [
      WordExample(english: 'The company\'s financial position was precarious — one bad quarter away from a serious cash-flow crisis.', korean: '회사의 재정 상황은 불안정했어, 심각한 현금 흐름 위기에서 한 분기 나쁜 성적이 나면 될 정도로.'),
      WordExample(english: 'A precarious over-reliance on a single client makes a business extremely vulnerable to external shocks.', korean: '단일 고객에 대한 불안정한 과도한 의존은 사업을 외부 충격에 극도로 취약하게 만들어.'),
      WordExample(english: 'Building on a precarious cultural foundation means that growth will only amplify the underlying problems.', korean: '불안정한 문화적 토대 위에 구축하는 것은 성장이 기저의 문제들만 증폭시킬 것임을 의미해.'),
    ],
    'precipitate': [
      WordExample(english: 'Announcing the restructure without adequate preparation precipitated a wave of anxiety and attrition.', korean: '적절한 준비 없이 구조 개편을 발표한 것이 불안과 이직의 파도를 촉발했어.'),
      WordExample(english: 'Avoid precipitate decisions — take the time to gather evidence before committing to a course of action.', korean: '성급한 결정은 피해, 행동 방침을 결정하기 전에 증거를 수집할 시간을 가져.'),
      WordExample(english: 'A single regulatory change can precipitate a complete rethink of the product roadmap.', korean: '하나의 규제 변화가 제품 로드맵의 완전한 재고를 촉발할 수 있어.'),
    ],
    'prodigious': [
      WordExample(english: 'She brought prodigious energy to every project she touched, inspiring those around her to raise their game.', korean: '그녀는 관여하는 모든 프로젝트에 엄청난 에너지를 가져와 주변 사람들이 수준을 높이도록 영감을 줬어.'),
      WordExample(english: 'The company\'s prodigious growth masked deeper structural problems that would surface later.', korean: '회사의 엄청난 성장은 나중에 표면화될 더 깊은 구조적 문제들을 가렸어.'),
      WordExample(english: 'Building a prodigious talent pipeline is one of the highest-return investments any organisation can make.', korean: '엄청난 인재 파이프라인을 구축하는 것이 어떤 조직도 할 수 있는 가장 높은 수익의 투자 중 하나야.'),
    ],
    'propagate': [
      WordExample(english: 'Organisations propagate culture through the behaviours they reward, tolerate, and punish.', korean: '조직들은 보상하고 용인하며 처벌하는 행동들을 통해 문화를 전파해.'),
      WordExample(english: 'Social media can propagate misinformation at a speed that outpaces any organisation\'s ability to respond.', korean: '소셜 미디어는 어떤 조직의 대응 능력도 앞지르는 속도로 허위 정보를 전파할 수 있어.'),
      WordExample(english: 'Use internal champions to propagate new ways of working from the ground up.', korean: '새로운 업무 방식을 아래에서부터 전파하기 위해 내부 챔피언들을 활용해.'),
    ],
    'propensity': [
      WordExample(english: 'A propensity for risk-taking is valuable in innovation but must be balanced with disciplined governance.', korean: '위험 감수 성향은 혁신에서 가치 있지만 규율 있는 거버넌스로 균형이 맞춰져야 해.'),
      WordExample(english: 'Understanding a customer\'s propensity to buy allows for more targeted and effective marketing.', korean: '고객의 구매 성향을 이해하면 더 타겟화되고 효과적인 마케팅이 가능해.'),
      WordExample(english: 'Her propensity to listen before speaking made her a trusted voice in every room she entered.', korean: '말하기 전에 듣는 그녀의 성향이 그녀를 그녀가 들어가는 모든 방에서 신뢰받는 목소리로 만들었어.'),
    ],
    'propriety': [
      WordExample(english: 'Maintaining propriety in professional communications protects both the sender and the organisation.', korean: '전문적인 소통에서 적절함을 유지하는 것이 발신자와 조직 모두를 보호해.'),
      WordExample(english: 'There were questions about the propriety of awarding the contract to a company with personal ties to leadership.', korean: '리더십과 개인적인 연결이 있는 회사에 계약을 수여하는 것의 적절성에 대한 의문들이 있었어.'),
      WordExample(english: 'A culture of propriety — doing the right thing even when no one is watching — is the foundation of ethical business.', korean: '아무도 보지 않을 때도 올바른 일을 하는 적절함의 문화가 윤리적 비즈니스의 토대야.'),
    ],
    'provocative': [
      WordExample(english: 'A provocative question at the start of a meeting can unlock creative thinking that a normal agenda never would.', korean: '회의 시작 시의 도발적인 질문은 일반적인 의제가 절대 열지 못할 창의적 사고를 열 수 있어.'),
      WordExample(english: 'Her provocative presentation challenged every assumption the team had held for years — and that was the point.', korean: '그녀의 도발적인 발표는 팀이 수년간 가졌던 모든 가정에 도전했어, 그것이 바로 요점이었어.'),
      WordExample(english: 'Be provocative in brainstorming — wild ideas often contain the seed of genuinely transformative solutions.', korean: '브레인스토밍에서 도발적이어봐, 황당한 아이디어들이 종종 진정으로 변혁적인 해결책의 씨앗을 담고 있어.'),
    ],
    'prudence': [
      WordExample(english: 'Financial prudence during growth years creates the resilience needed to weather inevitable downturns.', korean: '성장 연도의 재정적 신중함이 불가피한 경기 침체를 견뎌내는 데 필요한 회복력을 만들어.'),
      WordExample(english: 'Prudence does not mean risk avoidance — it means taking calculated risks with clear eyes.', korean: '신중함이 위험 회피를 의미하지 않아, 그것은 명확한 눈으로 계산된 위험을 감수하는 것을 의미해.'),
      WordExample(english: 'Show prudence in how you communicate sensitive information — timing and framing matter enormously.', korean: '민감한 정보를 전달하는 방법에서 신중함을 보여, 타이밍과 프레이밍이 엄청나게 중요해.'),
    ],
    'quandary': [
      WordExample(english: 'The leadership team found itself in a quandary — acting too quickly or too slowly both carried significant risks.', korean: '리더십 팀은 딜레마에 처했어, 너무 빠르거나 너무 느리게 행동하는 것 모두 상당한 위험을 수반했거든.'),
      WordExample(english: 'When facing a quandary, map out the second-order consequences of each option before choosing.', korean: '딜레마에 직면할 때 선택하기 전에 각 옵션의 2차 결과를 파악해봐.'),
      WordExample(english: 'The ethical quandary of prioritising shareholder returns over employee welfare is one every leader must confront.', korean: '직원 복지보다 주주 수익을 우선시하는 윤리적 딜레마는 모든 리더가 직면해야 하는 것이야.'),
    ],
    'rebuke': [
      WordExample(english: 'A private, respectful rebuke is almost always more effective than a public one for changing behaviour.', korean: '사적이고 존중하는 질책이 행동 변화를 위해 공개적인 것보다 거의 항상 더 효과적이야.'),
      WordExample(english: 'The board\'s formal rebuke sent a clear signal that the previous strategy was no longer acceptable.', korean: '이사회의 공식적인 질책은 이전 전략이 더 이상 용납되지 않는다는 명확한 신호를 보냈어.'),
      WordExample(english: 'Deliver a rebuke with care — the goal is correction, not humiliation.', korean: '질책은 신중하게 전달해, 목표는 굴욕이 아닌 교정이야.'),
    ],
    'reciprocal': [
      WordExample(english: 'Trust is a reciprocal relationship — leaders must extend it to earn it back.', korean: '신뢰는 상호적인 관계야, 리더들은 되돌려 받으려면 그것을 먼저 줘야 해.'),
      WordExample(english: 'Build reciprocal partnerships where both sides gain clear, measurable value from the collaboration.', korean: '양측이 협업에서 명확하고 측정 가능한 가치를 얻는 상호적인 파트너십을 구축해.'),
      WordExample(english: 'A reciprocal feedback culture — where leaders invite critique, not just deliver it — accelerates development.', korean: '리더가 비판을 전달하기만 하는 게 아니라 초대하는 상호적인 피드백 문화가 발전을 가속화해.'),
    ],
    'reckless': [
      WordExample(english: 'Reckless cost-cutting that strips out capability today creates far larger costs tomorrow.', korean: '오늘 역량을 제거하는 무모한 비용 절감은 내일 훨씬 더 큰 비용을 만들어.'),
      WordExample(english: 'Speed without governance can tip from agile into reckless — move fast, but not carelessly.', korean: '거버넌스 없는 속도는 민첩함에서 무모함으로 기울 수 있어, 빠르게 움직이되 부주의하게는 말고.'),
      WordExample(english: 'A reckless hiring decision made in haste can cost the organisation far more than a careful, slower process.', korean: '서둘러 내려진 무모한 채용 결정은 신중하고 느린 과정보다 조직에 훨씬 더 많은 비용을 치르게 할 수 있어.'),
    ],
    'rectify': [
      WordExample(english: 'Acknowledge the mistake, rectify it swiftly, and communicate what has been done to prevent recurrence.', korean: '실수를 인정하고 신속히 바로잡고, 재발을 방지하기 위해 무엇이 이루어졌는지 소통해.'),
      WordExample(english: 'Early detection of issues allows leaders to rectify problems before they escalate into crises.', korean: '문제의 조기 감지는 리더들이 문제가 위기로 확대되기 전에 바로잡을 수 있게 해.'),
      WordExample(english: 'It is always cheaper to rectify a process flaw at the design stage than after it has been deployed.', korean: '프로세스 결함은 배포된 후보다 설계 단계에서 바로잡는 것이 항상 더 저렴해.'),
    ],
    'redress': [
      WordExample(english: 'Provide a clear mechanism for employees to seek redress when they feel a decision has been unfair.', korean: '직원들이 결정이 불공정하다고 느낄 때 구제를 구할 수 있는 명확한 메커니즘을 제공해.'),
      WordExample(english: 'The company moved quickly to redress the pay disparity once the analysis made it undeniable.', korean: '분석이 그것을 부정할 수 없게 만들자 회사는 급여 격차를 시정하기 위해 신속히 움직였어.'),
      WordExample(english: 'Systemic inequities require systemic redress — individual gestures are insufficient on their own.', korean: '체계적인 불평등은 체계적인 시정이 필요해, 개별적인 제스처만으로는 충분하지 않아.'),
    ],
    'refute': [
      WordExample(english: 'Prepare data to refute the most likely objections before you walk into any critical presentation.', korean: '중요한 발표에 들어가기 전에 가장 예상되는 반대 의견을 반박할 데이터를 준비해.'),
      WordExample(english: 'She calmly refuted each claim in the report, citing specific evidence that the critics had overlooked.', korean: '그녀는 비평가들이 간과한 구체적인 증거를 인용하며 보고서의 각 주장을 침착하게 반박했어.'),
      WordExample(english: 'You cannot refute a feeling — acknowledge the emotion, then address the facts separately.', korean: '감정은 반박할 수 없어, 감정을 인정한 다음 사실을 별도로 다루어봐.'),
    ],
    'reinstate': [
      WordExample(english: 'After the review, the board voted to reinstate the original policy, citing insufficient evidence for the change.', korean: '검토 후 이사회는 변화에 대한 충분한 증거가 없다고 인용하며 원래 정책을 복원하기로 투표했어.'),
      WordExample(english: 'Customer trust, once lost, is far harder to reinstate than it was to build in the first place.', korean: '일단 잃어버린 고객 신뢰는 처음에 구축하는 것보다 복원하기가 훨씬 더 어려워.'),
      WordExample(english: 'The company reinstated the annual retreat after feedback made clear how much it meant to team cohesion.', korean: '회사는 피드백이 그것이 팀 결속에 얼마나 중요한지를 명확히 한 후 연례 수련회를 복원했어.'),
    ],
    'relinquish': [
      WordExample(english: 'Great leaders know when to relinquish control and trust the team to execute without micromanagement.', korean: '훌륭한 리더들은 언제 통제를 포기하고 세세한 관리 없이 실행하도록 팀을 신뢰해야 하는지 알아.'),
      WordExample(english: 'She was willing to relinquish her preferred approach once the data showed a better path.', korean: '그녀는 데이터가 더 나은 경로를 보여주자 자신이 선호하는 접근법을 기꺼이 포기했어.'),
      WordExample(english: 'Relinquish ego-driven positions in negotiations — focus on interests, not on being right.', korean: '협상에서 자아 중심적인 입장을 포기해, 옳음에 집중하지 말고 관심사에 집중해.'),
    ],
    'remediate': [
      WordExample(english: 'Once a vulnerability is identified, act swiftly to remediate it before it can be exploited.', korean: '취약성이 파악되면 악용되기 전에 그것을 해결하기 위해 신속히 행동해.'),
      WordExample(english: 'The team developed a plan to remediate the quality issues within 30 days without disrupting production.', korean: '팀은 생산을 방해하지 않고 30일 내에 품질 문제를 해결하기 위한 계획을 수립했어.'),
      WordExample(english: 'Acknowledging a problem and committing to remediate it builds more trust than pretending the issue doesn\'t exist.', korean: '문제를 인정하고 해결하겠다는 다짐이 문제가 존재하지 않는 척하는 것보다 더 많은 신뢰를 구축해.'),
    ],
    'remunerate': [
      WordExample(english: 'Remunerating people fairly is the baseline — above that, recognition and growth opportunities drive engagement.', korean: '사람들에게 공정하게 보수를 지급하는 것이 기준선이야, 그 이상에서는 인정과 성장 기회가 참여를 이끌어.'),
      WordExample(english: 'The organisation reviewed how it remunerated freelance contributors to ensure equity with full-time staff.', korean: '조직은 정규직 직원과의 형평성을 보장하기 위해 프리랜서 기여자들에게 보수를 지급하는 방식을 검토했어.'),
      WordExample(english: 'How you choose to remunerate top performers sends a signal about what the organisation truly values.', korean: '최고 성과자들에게 보수를 지급하는 방식이 조직이 진정으로 가치 있게 여기는 것에 대한 신호를 보내.'),
    ],
    'repercussion': [
      WordExample(english: 'Every major strategic decision carries repercussions — map them before you commit to the path.', korean: '모든 주요 전략적 결정은 파급 효과를 수반해, 그 경로에 헌신하기 전에 그것들을 파악해봐.'),
      WordExample(english: 'The repercussions of the data breach extended far beyond the initial financial penalty.', korean: '데이터 침해의 파급 효과는 초기 금전적 처벌을 훨씬 넘어섰어.'),
      WordExample(english: 'Failing to communicate change clearly has repercussions that can linger for months in team morale.', korean: '변화를 명확하게 소통하지 못하면 팀 사기에 몇 달간 지속될 수 있는 파급 효과가 있어.'),
    ],
    'repudiate': [
      WordExample(english: 'The organisation was swift to repudiate the misleading claims made in the leaked report.', korean: '조직은 유출된 보고서에서 제기된 오해의 소지가 있는 주장들을 신속히 부인했어.'),
      WordExample(english: 'Leaders who repudiate their own decisions under pressure lose the trust of their teams.', korean: '압박 아래 자신의 결정을 부인하는 리더들은 팀의 신뢰를 잃어.'),
      WordExample(english: 'When evidence demands it, have the courage to repudiate a strategy you once championed.', korean: '증거가 요구할 때 한때 지지했던 전략을 부인할 용기를 가져.'),
    ],
    'revoke': [
      WordExample(english: 'The company had to revoke its earlier guidance once more accurate data became available.', korean: '더 정확한 데이터가 이용 가능해지자 회사는 이전 가이던스를 철회해야 했어.'),
      WordExample(english: 'Access rights should be promptly revoked when an employee leaves to prevent security vulnerabilities.', korean: '보안 취약성을 방지하기 위해 직원이 떠날 때 접근 권한을 즉시 철회해야 해.'),
      WordExample(english: 'Revoking a decision publicly requires as much care and clarity as the original announcement.', korean: '결정을 공개적으로 철회하는 것은 원래 발표만큼이나 많은 주의와 명확성이 필요해.'),
    ],
    'rigidity': [
      WordExample(english: 'Organisational rigidity is a competitive liability — build in flexibility where the environment demands it.', korean: '조직적 경직성은 경쟁적 부채야, 환경이 요구하는 곳에 유연성을 구축해.'),
      WordExample(english: 'The rigidity of the approval process was the single biggest barrier to the team\'s ability to innovate.', korean: '승인 프로세스의 경직성이 팀의 혁신 능력에 대한 단일 최대 장벽이었어.'),
      WordExample(english: 'Intellectual rigidity — refusing to update beliefs in the face of new evidence — is a leadership flaw.', korean: '지적 경직성, 즉 새로운 증거에 직면해서 믿음을 업데이트하기를 거부하는 것은 리더십 결함이야.'),
    ],
    'rife': [
      WordExample(english: 'The post-merger integration period was rife with miscommunication and duplication of effort.', korean: '합병 후 통합 기간은 오해와 노력 중복으로 가득했어.'),
      WordExample(english: 'An industry rife with outdated practices is an industry ripe for disruption by more agile entrants.', korean: '구식 관행으로 가득한 산업은 더 민첩한 신진 업체들에 의한 파괴가 무르익은 산업이야.'),
      WordExample(english: 'The organisation\'s culture was rife with unspoken rules that new hires found deeply confusing.', korean: '조직의 문화는 신입 직원들이 매우 혼란스럽다고 느끼는 암묵적인 규칙들로 가득했어.'),
    ],
    'salient': [
      WordExample(english: 'The most salient finding from the research was that customers valued speed over price.', korean: '연구에서 가장 두드러진 발견은 고객들이 가격보다 속도를 더 가치 있게 여긴다는 거였어.'),
      WordExample(english: 'Focus your executive summary on the three most salient points — resist the urge to include everything.', korean: '경영 요약을 가장 두드러진 세 가지 포인트에 집중해, 모든 것을 포함하려는 충동을 억제해.'),
      WordExample(english: 'Identifying the salient variable in a complex dataset is often where the real analytical skill lies.', korean: '복잡한 데이터 세트에서 두드러진 변수를 파악하는 것이 종종 진정한 분석 기술이 있는 곳이야.'),
    ],
    'sanction': [
      WordExample(english: 'The committee issued a formal sanction after the investigation confirmed repeated policy violations.', korean: '조사가 반복적인 정책 위반을 확인한 후 위원회는 공식적인 제재를 발동했어.'),
      WordExample(english: 'Gaining executive sanction before launching a major initiative protects you from mid-project interference.', korean: '주요 이니셔티브를 시작하기 전에 경영진의 승인을 얻으면 프로젝트 중간의 방해로부터 보호해줘.'),
      WordExample(english: 'Behaviour that goes unsanctioned is behaviour that is implicitly condoned — act on violations consistently.', korean: '제재받지 않은 행동은 암묵적으로 묵인된 행동이야, 위반에 일관되게 조치해.'),
    ],
    'sentient': [
      WordExample(english: 'Treating employees as sentient individuals — not just resources — is the foundation of meaningful leadership.', korean: '직원들을 단순한 자원이 아닌 의식 있는 개인으로 대우하는 것이 의미 있는 리더십의 토대야.'),
      WordExample(english: 'A sentient approach to customer experience means recognising the emotional context behind every interaction.', korean: '고객 경험에 대한 의식 있는 접근법은 모든 상호작용 뒤의 감정적 맥락을 인식하는 것을 의미해.'),
      WordExample(english: 'Great user design acknowledges that every person using a product is a sentient being with unique needs and feelings.', korean: '훌륭한 사용자 디자인은 제품을 사용하는 모든 사람이 고유한 필요와 감정을 가진 의식 있는 존재임을 인정해.'),
    ],
    'serendipity': [
      WordExample(english: 'Many breakthrough ideas emerge from serendipity — create conditions that make happy accidents more likely.', korean: '많은 획기적인 아이디어가 우연한 발견에서 나와, 행복한 우연을 더 가능하게 하는 조건을 만들어봐.'),
      WordExample(english: 'Serendipity favours the well-prepared — the more you know, the more you can recognise a valuable coincidence.', korean: '우연한 발견은 잘 준비된 사람을 선호해, 더 많이 알수록 가치 있는 우연의 일치를 더 잘 인식할 수 있어.'),
      WordExample(english: 'The collaboration started through serendipity — two teams working on adjacent problems happened to share the same floor.', korean: '그 협업은 우연한 발견으로 시작됐어, 인접한 문제를 작업하는 두 팀이 우연히 같은 층을 공유했거든.'),
    ],
    'shrewd': [
      WordExample(english: 'A shrewd negotiator understands what the other side needs as well as what they say they want.', korean: '영리한 협상가는 상대방이 원한다고 말하는 것뿐만 아니라 그들이 필요로 하는 것도 이해해.'),
      WordExample(english: 'Her shrewd reading of the market led her to pivot the product six months before competitors saw the shift.', korean: '시장에 대한 그녀의 영리한 읽기가 경쟁자들이 변화를 보기 6개월 전에 제품을 피벗하도록 이끌었어.'),
      WordExample(english: 'A shrewd investment in talent during a downturn positions a company for outsized returns when growth resumes.', korean: '경기 침체 중에 인재에 대한 영리한 투자는 성장이 재개될 때 탁월한 수익을 위해 회사를 포지셔닝해.'),
    ],
    'skepticism': [
      WordExample(english: 'Healthy skepticism in strategic planning prevents teams from falling in love with their own assumptions.', korean: '전략적 기획에서의 건전한 회의주의는 팀들이 자신들의 가정에 빠져드는 것을 방지해.'),
      WordExample(english: 'She met every new proposal with appropriate skepticism — not to block ideas, but to stress-test them.', korean: '그녀는 모든 새 제안을 적절한 회의주의로 맞이했어, 아이디어를 차단하기 위해서가 아니라 스트레스 테스트하기 위해서.'),
      WordExample(english: 'Investor skepticism can be disarmed by transparent, evidence-based communication of your strategy.', korean: '투자자 회의주의는 당신의 전략에 대한 투명하고 증거 기반의 소통으로 무력화될 수 있어.'),
    ],
    'solvent': [
      WordExample(english: 'Staying solvent through a downturn requires maintaining cash reserves even when growth is strong.', korean: '경기 침체를 통해 지급 능력을 유지하려면 성장이 강할 때도 현금 준비금을 유지해야 해.'),
      WordExample(english: 'The board\'s priority was ensuring the company remained solvent long enough to complete the turnaround.', korean: '이사회의 우선순위는 회사가 회복을 완료하기에 충분히 오래 지급 능력을 유지하는 것이었어.'),
      WordExample(english: 'A solvent organisation is not just one that pays its bills — it is one that can invest in its own future.', korean: '지급 능력이 있는 조직은 단지 청구서를 지불하는 조직이 아니야, 그것은 자신의 미래에 투자할 수 있는 조직이야.'),
    ],
    'stagnation': [
      WordExample(english: 'Organisational stagnation often sets in when leaders stop challenging themselves and their teams.', korean: '리더들이 자신과 팀에 도전하기를 멈출 때 종종 조직 침체가 시작돼.'),
      WordExample(english: 'Rotation programmes prevent the stagnation that comes from keeping talented people in the same role too long.', korean: '순환 프로그램은 재능 있는 사람들을 너무 오랫동안 같은 역할에 유지함으로써 오는 침체를 방지해.'),
      WordExample(english: 'Complacency is the seedbed of stagnation — build a culture that permanently questions the status quo.', korean: '자기 만족이 침체의 토양이야, 영구적으로 현상 유지에 의문을 제기하는 문화를 구축해.'),
    ],
    'steadfast': [
      WordExample(english: 'Steadfast commitment to your values during difficult times defines your character as a leader.', korean: '어려운 시기에 가치에 대한 확고한 헌신이 리더로서 당신의 성품을 정의해.'),
      WordExample(english: 'She remained steadfast in her belief that culture change was possible, even when results were slow.', korean: '결과가 느릴 때도 그녀는 문화 변화가 가능하다는 믿음에 확고하게 유지했어.'),
      WordExample(english: 'A steadfast focus on customer value is the surest path to sustainable competitive advantage.', korean: '고객 가치에 대한 확고한 집중이 지속 가능한 경쟁 우위로 가는 가장 확실한 경로야.'),
    ],
    'stipulate': [
      WordExample(english: 'The service agreement stipulates a 48-hour response time for all critical issues.', korean: '서비스 계약은 모든 중요한 문제에 대해 48시간 응답 시간을 규정해.'),
      WordExample(english: 'Stipulate the expected outcomes and success criteria before a project begins, not at the end.', korean: '예상 결과와 성공 기준을 프로젝트 끝이 아닌 시작 전에 명시해.'),
      WordExample(english: 'The grant conditions stipulated that all findings must be published openly within 12 months.', korean: '보조금 조건은 모든 연구 결과를 12개월 내에 공개적으로 발표해야 한다고 규정했어.'),
    ],
    'subvert': [
      WordExample(english: 'Covert alliances formed to subvert a decision signal that the decision-making process itself lacks legitimacy.', korean: '결정을 무력화하기 위해 형성된 비밀 동맹은 의사 결정 과정 자체가 정당성이 부족하다는 신호야.'),
      WordExample(english: 'Good governance structures prevent any individual from subverting the collective will of the board.', korean: '좋은 거버넌스 구조는 어떤 개인도 이사회의 집단적 의지를 무력화하는 것을 방지해.'),
      WordExample(english: 'If you disagree with a decision, address it through proper channels — do not subvert it quietly.', korean: '결정에 동의하지 않으면 적절한 채널을 통해 다루어, 조용히 무력화하지 말고.'),
    ],
    'succinct': [
      WordExample(english: 'A succinct executive summary respects the reader\'s time and increases the chance your message will be heard.', korean: '간결한 경영 요약은 독자의 시간을 존중하고 메시지가 전달될 가능성을 높여.'),
      WordExample(english: 'Train yourself to be succinct — the ability to say more with less is a rare and valuable skill.', korean: '간결해지도록 훈련해, 더 적은 것으로 더 많이 말하는 능력은 드물고 가치 있는 기술이야.'),
      WordExample(english: 'Her succinct feedback gave the team exactly what they needed to improve without overwhelming them.', korean: '그녀의 간결한 피드백은 팀을 압도하지 않고 개선하는 데 필요한 것을 정확히 제공했어.'),
    ],
    'supple': [
      WordExample(english: 'A supple strategy can bend to accommodate new information without breaking its underlying logic.', korean: '유연한 전략은 기저의 논리를 깨뜨리지 않고 새로운 정보를 수용하기 위해 구부러질 수 있어.'),
      WordExample(english: 'The most resilient organisations are those with supple structures that can adapt without losing coherence.', korean: '가장 회복력 있는 조직은 일관성을 잃지 않고 적응할 수 있는 유연한 구조를 가진 조직들이야.'),
      WordExample(english: 'A supple mindset — open to revision but anchored in principles — is what sustains leadership through uncertainty.', korean: '개정에 열려 있지만 원칙에 닻을 내린 유연한 마인드셋이 불확실성을 통해 리더십을 유지하는 거야.'),
    ],
    'surpass': [
      WordExample(english: 'The team\'s results surpassed all expectations, validating the bold strategy they had committed to.', korean: '팀의 결과가 모든 기대를 뛰어넘어, 그들이 헌신했던 대담한 전략의 유효성을 확인했어.'),
      WordExample(english: 'To surpass the competition, focus less on what they are doing and more on what your customers truly need.', korean: '경쟁자를 뛰어넘으려면 그들이 무엇을 하고 있는지보다 고객이 진정으로 필요로 하는 것에 더 집중해.'),
      WordExample(english: 'When you surpass a milestone, celebrate it — then immediately set your sights on the next challenge.', korean: '마일스톤을 뛰어넘으면 축하해, 그런 다음 즉시 다음 도전으로 눈을 돌려.'),
    ],

    // ── 추가 단어 (Additional Words) ──
    'habit': [
      WordExample(english: 'I have a habit of checking my phone first thing in the morning.', korean: '나는 아침에 일어나자마자 휴대폰을 확인하는 습관이 있어.'),
      WordExample(english: 'Reading before bed is a good habit to build.', korean: '자기 전에 책 읽는 건 들이기 좋은 습관이야.'),
      WordExample(english: 'It took me months to break the habit of snacking at night.', korean: '밤에 간식 먹는 습관을 고치는 데 몇 달이 걸렸어.'),
    ],
    'leisure': [
      WordExample(english: 'In my leisure time, I usually go hiking with friends.', korean: '여가 시간에 나는 보통 친구들이랑 등산을 가.'),
      WordExample(english: 'There are many leisure facilities near my apartment.', korean: '우리 아파트 근처에는 여가 시설이 많아.'),
      WordExample(english: 'I don\'t have much leisure time these days because of work.', korean: '요즘은 일 때문에 여가 시간이 별로 없어.'),
    ],
    'relax': [
      WordExample(english: 'I like to relax by listening to music after work.', korean: '퇴근 후에 음악을 들으면서 쉬는 걸 좋아해.'),
      WordExample(english: 'It\'s hard to relax when you have a deadline coming up.', korean: '마감이 다가오면 편히 쉬기가 어려워.'),
      WordExample(english: 'We went to the beach to relax for the weekend.', korean: '우리는 주말에 쉬려고 바닷가에 갔어.'),
    ],
    'recharge': [
      WordExample(english: 'A short trip helps me recharge my energy.', korean: '짧은 여행이 내 에너지를 재충전하는 데 도움이 돼.'),
      WordExample(english: 'I spend Sundays at home to recharge for the week.', korean: '한 주를 위해 재충전하려고 일요일은 집에서 보내.'),
      WordExample(english: 'Sometimes you just need a day off to recharge.', korean: '가끔은 재충전을 위해 하루 쉬는 게 필요해.'),
    ],
    'unwind': [
      WordExample(english: 'Taking a warm bath helps me unwind at night.', korean: '따뜻한 목욕은 밤에 긴장을 푸는 데 도움이 돼.'),
      WordExample(english: 'After a long week, I unwind by watching movies.', korean: '긴 한 주가 끝나면 영화를 보면서 긴장을 풀어.'),
      WordExample(english: 'My dad unwinds by working in his garden.', korean: '우리 아빠는 정원을 가꾸면서 긴장을 푸셔.'),
    ],
    'favorite': [
      WordExample(english: 'My favorite place to visit is the park near the river.', korean: '내가 제일 좋아하는 장소는 강가 근처 공원이야.'),
      WordExample(english: 'Kimchi stew is my favorite dish to cook at home.', korean: '김치찌개는 내가 집에서 제일 좋아하는 요리야.'),
      WordExample(english: 'Who is your favorite singer these days?', korean: '요즘 제일 좋아하는 가수가 누구야?'),
    ],
    'souvenir': [
      WordExample(english: 'I always buy a small souvenir when I travel.', korean: '나는 여행할 때 항상 작은 기념품을 사.'),
      WordExample(english: 'This magnet is a souvenir from my trip to Japan.', korean: '이 자석은 일본 여행에서 산 기념품이야.'),
      WordExample(english: 'The souvenir shops near the beach were really crowded.', korean: '해변 근처 기념품 가게들이 정말 붐볐어.'),
    ],
    'sightseeing': [
      WordExample(english: 'We did a lot of sightseeing on our first day in Paris.', korean: '파리 첫날에 관광을 정말 많이 했어.'),
      WordExample(english: 'I prefer relaxing over sightseeing when I go on vacation.', korean: '휴가 가면 관광보다 쉬는 걸 더 좋아해.'),
      WordExample(english: 'The city bus is the easiest way to go sightseeing.', korean: '시티 버스가 관광하기에 제일 편한 방법이야.'),
    ],
    'luggage': [
      WordExample(english: 'I always pack light so I don\'t carry heavy luggage.', korean: '무거운 짐을 들지 않으려고 항상 가볍게 싸.'),
      WordExample(english: 'My luggage got lost at the airport last year.', korean: '작년에 공항에서 내 짐이 분실됐어.'),
      WordExample(english: 'Please keep your luggage with you at all times.', korean: '짐은 항상 몸에 지니고 있어 줘.'),
    ],
    'appliance': [
      WordExample(english: 'We bought new kitchen appliances when we moved in.', korean: '이사 올 때 새 주방 가전을 샀어.'),
      WordExample(english: 'The most useful appliance in my house is the air fryer.', korean: '우리 집에서 가장 유용한 가전은 에어프라이어야.'),
      WordExample(english: 'Old appliances use a lot more electricity.', korean: '오래된 가전제품은 전기를 훨씬 많이 써.'),
    ],
    'spacious': [
      WordExample(english: 'My new apartment is much more spacious than the old one.', korean: '새 아파트가 예전 집보다 훨씬 넓어.'),
      WordExample(english: 'The living room is bright and spacious.', korean: '거실이 밝고 넓어.'),
      WordExample(english: 'I want a spacious kitchen where I can cook with friends.', korean: '친구들이랑 요리할 수 있는 넓은 주방을 갖고 싶어.'),
    ],
    'cozy': [
      WordExample(english: 'My room is small but really cozy.', korean: '내 방은 작지만 정말 아늑해.'),
      WordExample(english: 'We found a cozy little café near the station.', korean: '역 근처에서 아늑하고 작은 카페를 찾았어.'),
      WordExample(english: 'I love staying in my cozy bed on rainy days.', korean: '비 오는 날에는 아늑한 침대에 있는 게 좋아.'),
    ],
    'tidy': [
      WordExample(english: 'I try to keep my desk tidy so I can focus.', korean: '집중하려고 책상을 깔끔하게 유지하려고 해.'),
      WordExample(english: 'I tidy up my room every Saturday morning.', korean: '토요일 아침마다 방을 정리해.'),
      WordExample(english: 'My roommate is much tidier than I am.', korean: '룸메이트가 나보다 훨씬 깔끔해.'),
    ],
    'renovate': [
      WordExample(english: 'We renovated the bathroom last summer.', korean: '작년 여름에 욕실을 리모델링했어.'),
      WordExample(english: 'The old building was renovated into a library.', korean: '오래된 건물이 도서관으로 개조됐어.'),
      WordExample(english: 'Renovating an apartment takes more time than you think.', korean: '아파트를 리모델링하는 건 생각보다 시간이 오래 걸려.'),
    ],
    'neighbor': [
      WordExample(english: 'My neighbor always says hello when we meet in the elevator.', korean: '이웃이 엘리베이터에서 만나면 항상 인사해.'),
      WordExample(english: 'We share vegetables with our neighbors.', korean: '우리는 이웃들과 채소를 나눠 먹어.'),
      WordExample(english: 'The noise from my upstairs neighbor bothers me sometimes.', korean: '위층 이웃 소음이 가끔 신경 쓰여.'),
    ],
    'facility': [
      WordExample(english: 'The park has great facilities, like a gym and a pool.', korean: '그 공원에는 헬스장이나 수영장 같은 좋은 시설이 있어.'),
      WordExample(english: 'Our school built a new sports facility last year.', korean: '우리 학교는 작년에 새 체육 시설을 지었어.'),
      WordExample(english: 'The facilities in this building are pretty old.', korean: '이 건물의 시설은 꽤 오래됐어.'),
    ],
    'convenience store': [
      WordExample(english: 'There\'s a convenience store right in front of my building.', korean: '우리 건물 바로 앞에 편의점이 있어.'),
      WordExample(english: 'I often grab a quick lunch at the convenience store.', korean: '편의점에서 간단히 점심을 자주 사 먹어.'),
      WordExample(english: 'Convenience stores in Korea are open 24 hours.', korean: '한국 편의점은 24시간 열어.'),
    ],
    'grocery': [
      WordExample(english: 'I go grocery shopping every Sunday.', korean: '나는 일요일마다 장을 봐.'),
      WordExample(english: 'Grocery prices have gone up a lot lately.', korean: '요즘 식료품 가격이 많이 올랐어.'),
      WordExample(english: 'I order groceries online when I\'m busy.', korean: '바쁠 때는 식료품을 온라인으로 주문해.'),
    ],
    'recipe': [
      WordExample(english: 'I found a simple pasta recipe online.', korean: '인터넷에서 간단한 파스타 요리법을 찾았어.'),
      WordExample(english: 'My mom never follows a recipe when she cooks.', korean: '엄마는 요리할 때 요리법을 전혀 안 보셔.'),
      WordExample(english: 'Can you share the recipe for this cake?', korean: '이 케이크 레시피 공유해 줄 수 있어?'),
    ],
    'delicious': [
      WordExample(english: 'The food at that restaurant was absolutely delicious.', korean: '그 식당 음식은 정말 맛있었어.'),
      WordExample(english: 'My grandmother makes the most delicious dumplings.', korean: '할머니가 세상에서 제일 맛있는 만두를 만드셔.'),
      WordExample(english: 'It smells delicious in here!', korean: '여기 냄새 정말 맛있다!'),
    ],
    'workout': [
      WordExample(english: 'I do a 30-minute workout every morning.', korean: '나는 매일 아침 30분씩 운동해.'),
      WordExample(english: 'After a hard workout, I feel refreshed.', korean: '힘든 운동을 하고 나면 개운해.'),
      WordExample(english: 'My favorite workout is running along the river.', korean: '내가 제일 좋아하는 운동은 강변 달리기야.'),
    ],
    'stretch': [
      WordExample(english: 'I always stretch before I go running.', korean: '나는 달리기 전에 항상 스트레칭을 해.'),
      WordExample(english: 'Stretching helps me feel less stiff after sitting all day.', korean: '하루 종일 앉아 있다가 스트레칭하면 덜 뻐근해.'),
      WordExample(english: 'Don\'t forget to stretch after your workout.', korean: '운동 끝나고 스트레칭하는 거 잊지 마.'),
    ],
    'sweat': [
      WordExample(english: 'I was covered in sweat after playing basketball.', korean: '농구를 하고 나서 땀범벅이 됐어.'),
      WordExample(english: 'I sweat a lot in the summer.', korean: '나는 여름에 땀을 많이 흘려.'),
      WordExample(english: 'A good workout should make you sweat.', korean: '좋은 운동이라면 땀이 나야 해.'),
    ],
    'injury': [
      WordExample(english: 'I had a knee injury, so I stopped running for a while.', korean: '무릎을 다쳐서 한동안 달리기를 쉬었어.'),
      WordExample(english: 'Warming up can prevent injuries.', korean: '준비 운동을 하면 부상을 예방할 수 있어.'),
      WordExample(english: 'He recovered quickly from his injury.', korean: '그는 부상에서 빨리 회복했어.'),
    ],
    'energetic': [
      WordExample(english: 'I feel more energetic when I exercise in the morning.', korean: '아침에 운동하면 더 활기차.'),
      WordExample(english: 'My younger sister is always energetic and cheerful.', korean: '내 여동생은 항상 활기차고 명랑해.'),
      WordExample(english: 'The concert had a really energetic atmosphere.', korean: '그 콘서트는 분위기가 정말 활기찼어.'),
    ],
    'exhausted': [
      WordExample(english: 'I was exhausted after working late all week.', korean: '일주일 내내 야근하고 나서 녹초가 됐어.'),
      WordExample(english: 'After the long hike, everyone was exhausted.', korean: '긴 등산이 끝나고 다들 지쳐 있었어.'),
      WordExample(english: 'I get exhausted easily when I don\'t sleep well.', korean: '잠을 잘 못 자면 쉽게 지쳐.'),
    ],
    'concert': [
      WordExample(english: 'I went to my first concert when I was in high school.', korean: '고등학생 때 처음으로 콘서트에 갔어.'),
      WordExample(english: 'The concert tickets sold out in five minutes.', korean: '콘서트 티켓이 5분 만에 매진됐어.'),
      WordExample(english: 'We sang along with the crowd at the concert.', korean: '콘서트에서 관객들이랑 같이 노래를 따라 불렀어.'),
    ],
    'performance': [
      WordExample(english: 'The dancers gave an amazing performance.', korean: '무용수들이 멋진 공연을 보여줬어.'),
      WordExample(english: 'I was nervous before my piano performance.', korean: '피아노 공연 전에 긴장했어.'),
      WordExample(english: 'The live performance was better than the recording.', korean: '라이브 공연이 녹음본보다 더 좋았어.'),
    ],
    'genre': [
      WordExample(english: 'My favorite movie genre is science fiction.', korean: '내가 제일 좋아하는 영화 장르는 SF야.'),
      WordExample(english: 'I listen to many different genres of music.', korean: '나는 여러 장르의 음악을 들어.'),
      WordExample(english: 'Romance isn\'t really my genre.', korean: '로맨스는 내 취향이 아니야.'),
    ],
    'episode': [
      WordExample(english: 'I watched five episodes of the drama in one night.', korean: '하룻밤에 드라마 다섯 편을 봤어.'),
      WordExample(english: 'The last episode had a surprising ending.', korean: '마지막 회는 결말이 놀라웠어.'),
      WordExample(english: 'That was a funny episode from my childhood.', korean: '그건 내 어린 시절의 재미있는 일화였어.'),
    ],
    'subscribe': [
      WordExample(english: 'I subscribe to a few streaming services.', korean: '나는 스트리밍 서비스 몇 개를 구독하고 있어.'),
      WordExample(english: 'Don\'t forget to subscribe to my channel!', korean: '내 채널 구독하는 거 잊지 마!'),
      WordExample(english: 'I subscribed to a cooking magazine last year.', korean: '작년에 요리 잡지를 구독했어.'),
    ],
    'download': [
      WordExample(english: 'I download podcasts to listen to on the subway.', korean: '지하철에서 들으려고 팟캐스트를 내려받아.'),
      WordExample(english: 'The app takes a long time to download.', korean: '그 앱은 내려받는 데 시간이 오래 걸려.'),
      WordExample(english: 'You can download the map before you travel.', korean: '여행 가기 전에 지도를 내려받아 둘 수 있어.'),
    ],
    'device': [
      WordExample(english: 'I use three different devices every day.', korean: '나는 매일 세 가지 기기를 사용해.'),
      WordExample(english: 'This device can control all the lights in the house.', korean: '이 기기로 집 안의 모든 조명을 조절할 수 있어.'),
      WordExample(english: 'Please turn off your devices during the movie.', korean: '영화 보는 동안 기기를 꺼 줘.'),
    ],
    'battery': [
      WordExample(english: 'My phone battery dies really quickly these days.', korean: '요즘 휴대폰 배터리가 정말 빨리 닳아.'),
      WordExample(english: 'I always carry an extra battery when I travel.', korean: '여행할 때 항상 보조 배터리를 챙겨.'),
      WordExample(english: 'Let me charge the battery before we go.', korean: '나가기 전에 배터리 좀 충전할게.'),
    ],
    'upgrade': [
      WordExample(english: 'I upgraded my phone after using it for four years.', korean: '4년 동안 쓰고 휴대폰을 바꿨어.'),
      WordExample(english: 'The hotel upgraded our room for free.', korean: '호텔이 무료로 방을 업그레이드해 줬어.'),
      WordExample(english: 'I need to upgrade my laptop soon.', korean: '곧 노트북을 업그레이드해야 해.'),
    ],
    'inconvenient': [
      WordExample(english: 'It\'s inconvenient that the store closes so early.', korean: '가게가 그렇게 일찍 문을 닫아서 불편해.'),
      WordExample(english: 'Living far from the subway is really inconvenient.', korean: '지하철에서 멀리 사는 건 정말 불편해.'),
      WordExample(english: 'Sorry, is this an inconvenient time to talk?', korean: '미안, 지금 통화하기 곤란한 시간이야?'),
    ],
    'traffic jam': [
      WordExample(english: 'I was stuck in a traffic jam for an hour.', korean: '한 시간 동안 교통 체증에 갇혀 있었어.'),
      WordExample(english: 'There\'s always a traffic jam on holiday weekends.', korean: '연휴 주말에는 항상 차가 막혀.'),
      WordExample(english: 'I take the subway to avoid traffic jams.', korean: '차 막히는 걸 피하려고 지하철을 타.'),
    ],
    'public transportation': [
      WordExample(english: 'Public transportation in Seoul is fast and cheap.', korean: '서울 대중교통은 빠르고 저렴해.'),
      WordExample(english: 'I use public transportation instead of driving.', korean: '운전 대신 대중교통을 이용해.'),
      WordExample(english: 'Public transportation makes it easy to travel around the city.', korean: '대중교통 덕분에 시내를 돌아다니기 쉬워.'),
    ],
    'weather': [
      WordExample(english: 'The weather has been really nice this week.', korean: '이번 주 날씨가 정말 좋았어.'),
      WordExample(english: 'I check the weather before I decide what to wear.', korean: '뭘 입을지 정하기 전에 날씨를 확인해.'),
      WordExample(english: 'The weather in Korea changes a lot by season.', korean: '한국 날씨는 계절마다 많이 바뀌어.'),
    ],
    'humid': [
      WordExample(english: 'Summers in Korea are very hot and humid.', korean: '한국 여름은 아주 덥고 습해.'),
      WordExample(english: 'I don\'t like humid weather because my hair gets messy.', korean: '습한 날씨에는 머리가 엉망이 돼서 싫어.'),
      WordExample(english: 'It\'s so humid today that my clothes feel wet.', korean: '오늘 너무 습해서 옷이 축축한 느낌이야.'),
    ],
    'chilly': [
      WordExample(english: 'It gets chilly in the evening, so bring a jacket.', korean: '저녁엔 쌀쌀해지니까 재킷 챙겨.'),
      WordExample(english: 'I love walking on chilly autumn mornings.', korean: '쌀쌀한 가을 아침에 걷는 걸 좋아해.'),
      WordExample(english: 'The room felt a bit chilly without the heater.', korean: '난방을 안 켜니 방이 좀 쌀쌀했어.'),
    ],
    'forecast': [
      WordExample(english: 'The forecast says it will rain tomorrow.', korean: '예보에서 내일 비가 온대.'),
      WordExample(english: 'I always check the weather forecast before a trip.', korean: '여행 전에 항상 일기 예보를 확인해.'),
      WordExample(english: 'The forecast was wrong, and it was sunny all day.', korean: '예보가 틀려서 하루 종일 맑았어.'),
    ],
    'season': [
      WordExample(english: 'Autumn is my favorite season because of the colors.', korean: '단풍 색깔 때문에 가을이 제일 좋아하는 계절이야.'),
      WordExample(english: 'Each season has its own special food.', korean: '계절마다 특별한 음식이 있어.'),
      WordExample(english: 'The rainy season usually starts in late June.', korean: '장마는 보통 6월 말에 시작돼.'),
    ],
    'embarrassing': [
      WordExample(english: 'It was embarrassing when I called my teacher "Mom."', korean: '선생님을 "엄마"라고 불렀을 때 너무 창피했어.'),
      WordExample(english: 'I made an embarrassing mistake during my presentation.', korean: '발표 중에 창피한 실수를 했어.'),
      WordExample(english: 'That was the most embarrassing moment of my life.', korean: '그게 내 인생에서 가장 민망한 순간이었어.'),
    ],
    'disappointed': [
      WordExample(english: 'I was disappointed when the concert was canceled.', korean: '콘서트가 취소됐을 때 실망했어.'),
      WordExample(english: 'My parents were disappointed with my grades.', korean: '부모님이 내 성적에 실망하셨어.'),
      WordExample(english: 'Don\'t be disappointed; you did your best.', korean: '실망하지 마, 최선을 다했잖아.'),
    ],
    'relieved': [
      WordExample(english: 'I was relieved when I found my lost wallet.', korean: '잃어버린 지갑을 찾았을 때 안도했어.'),
      WordExample(english: 'We were relieved that no one was hurt.', korean: '아무도 다치지 않아서 다행이었어.'),
      WordExample(english: 'I felt relieved after finishing the exam.', korean: '시험을 끝내고 나니 마음이 놓였어.'),
    ],
    'thrilled': [
      WordExample(english: 'I was thrilled to get tickets to the final game.', korean: '결승전 티켓을 구해서 너무 신났어.'),
      WordExample(english: 'She was thrilled when she heard the good news.', korean: '그녀는 좋은 소식을 듣고 정말 기뻐했어.'),
      WordExample(english: 'The kids were thrilled to see the snow.', korean: '아이들은 눈을 보고 신이 났어.'),
    ],
    'curious': [
      WordExample(english: 'I\'m curious about how other people spend their weekends.', korean: '다른 사람들이 주말을 어떻게 보내는지 궁금해.'),
      WordExample(english: 'Kids are naturally curious about everything.', korean: '아이들은 원래 모든 것에 호기심이 많아.'),
      WordExample(english: 'I was curious, so I tried the new restaurant.', korean: '궁금해서 새로 생긴 식당에 가 봤어.'),
    ],
    'confident': [
      WordExample(english: 'I feel more confident when I speak English now.', korean: '이제 영어로 말할 때 더 자신감이 생겨.'),
      WordExample(english: 'She gave a confident answer to the question.', korean: '그녀는 그 질문에 자신 있게 대답했어.'),
      WordExample(english: 'Practice makes me confident before a presentation.', korean: '연습을 하면 발표 전에 자신감이 생겨.'),
    ],
    'patient': [
      WordExample(english: 'You have to be patient when you teach children.', korean: '아이들을 가르칠 땐 참을성이 있어야 해.'),
      WordExample(english: 'My grandfather is the most patient person I know.', korean: '할아버지는 내가 아는 가장 참을성 있는 분이야.'),
      WordExample(english: 'Please be patient; the food will be ready soon.', korean: '조금만 기다려 줘, 음식 곧 나와.'),
    ],
    'responsible': [
      WordExample(english: 'I\'m responsible for planning our team dinner.', korean: '팀 회식 준비는 내가 담당하고 있어.'),
      WordExample(english: 'He is a very responsible and hard-working student.', korean: '그는 아주 책임감 있고 성실한 학생이야.'),
      WordExample(english: 'Who is responsible for cleaning the kitchen this week?', korean: '이번 주 부엌 청소 담당이 누구야?'),
    ],
    'reliable': [
      WordExample(english: 'My old car is still very reliable.', korean: '내 오래된 차는 아직도 아주 믿음직해.'),
      WordExample(english: 'She is a reliable friend who always keeps her promises.', korean: '그녀는 항상 약속을 지키는 믿을 만한 친구야.'),
      WordExample(english: 'I need a reliable internet connection for work.', korean: '일하려면 안정적인 인터넷 연결이 필요해.'),
    ],
    'sociable': [
      WordExample(english: 'I\'m quite sociable and enjoy meeting new people.', korean: '나는 꽤 사교적이라 새로운 사람 만나는 걸 좋아해.'),
      WordExample(english: 'My brother is less sociable than I am.', korean: '남동생은 나보다 덜 사교적이야.'),
      WordExample(english: 'Being sociable helps a lot in a new job.', korean: '사교적이면 새 직장에서 많이 도움이 돼.'),
    ],
    'introverted': [
      WordExample(english: 'I\'m a bit introverted, so I like quiet weekends.', korean: '나는 좀 내성적이라서 조용한 주말을 좋아해.'),
      WordExample(english: 'Introverted people often need time alone to recharge.', korean: '내성적인 사람들은 재충전하려면 혼자만의 시간이 필요할 때가 많아.'),
      WordExample(english: 'He seems introverted, but he\'s funny once you know him.', korean: '그는 내성적으로 보이지만 알고 나면 재밌어.'),
    ],
    'personality': [
      WordExample(english: 'My best friend has a cheerful personality.', korean: '내 절친은 성격이 밝아.'),
      WordExample(english: 'Our personalities are different, but we get along well.', korean: '우리는 성격이 다르지만 잘 지내.'),
      WordExample(english: 'I think personality matters more than appearance.', korean: '나는 외모보다 성격이 더 중요하다고 생각해.'),
    ],
    'get along': [
      WordExample(english: 'I get along well with my coworkers.', korean: '나는 동료들이랑 잘 지내.'),
      WordExample(english: 'My sister and I didn\'t get along when we were young.', korean: '어릴 때 언니랑 나는 사이가 안 좋았어.'),
      WordExample(english: 'It\'s important to get along with your roommates.', korean: '룸메이트랑 잘 지내는 게 중요해.'),
    ],
    'hang out': [
      WordExample(english: 'I usually hang out with my friends on Friday nights.', korean: '금요일 밤에는 보통 친구들이랑 놀아.'),
      WordExample(english: 'We used to hang out at the park after school.', korean: '방과 후에 공원에서 자주 놀았어.'),
      WordExample(english: 'Do you want to hang out this weekend?', korean: '이번 주말에 같이 놀래?'),
    ],
    'catch up': [
      WordExample(english: 'Let\'s meet for coffee and catch up.', korean: '커피 마시면서 근황 얘기하자.'),
      WordExample(english: 'I need to catch up on my work this weekend.', korean: '이번 주말에 밀린 일을 해야 해.'),
      WordExample(english: 'We talked for hours to catch up after a long time.', korean: '오랜만에 만나서 몇 시간 동안 수다 떨었어.'),
    ],
    'look forward to': [
      WordExample(english: 'I\'m really looking forward to my summer vacation.', korean: '여름휴가가 정말 기대돼.'),
      WordExample(english: 'We look forward to seeing you again.', korean: '다시 만나길 기대하고 있어.'),
      WordExample(english: 'I always look forward to Friday evenings.', korean: '나는 항상 금요일 저녁이 기다려져.'),
    ],
    'figure out': [
      WordExample(english: 'It took me a while to figure out how to use the app.', korean: '앱 사용법을 알아내는 데 시간이 좀 걸렸어.'),
      WordExample(english: 'We need to figure out where to eat tonight.', korean: '오늘 밤 어디서 먹을지 정해야 해.'),
      WordExample(english: 'Don\'t worry, we\'ll figure it out together.', korean: '걱정 마, 같이 해결해 보자.'),
    ],
    'put off': [
      WordExample(english: 'I keep putting off cleaning my room.', korean: '방 청소를 계속 미루고 있어.'),
      WordExample(english: 'We put off the trip until next month.', korean: '여행을 다음 달로 미뤘어.'),
      WordExample(english: 'Don\'t put off going to the dentist.', korean: '치과 가는 걸 미루지 마.'),
    ],
    'end up': [
      WordExample(english: 'We ended up staying at home because of the rain.', korean: '비 때문에 결국 집에 있었어.'),
      WordExample(english: 'I ended up buying more than I planned.', korean: '계획보다 결국 더 많이 샀어.'),
      WordExample(english: 'If you don\'t plan, you\'ll end up wasting time.', korean: '계획을 안 세우면 결국 시간을 낭비하게 돼.'),
    ],
    'turn out': [
      WordExample(english: 'The movie turned out to be better than I expected.', korean: '그 영화는 생각보다 괜찮았어.'),
      WordExample(english: 'It turned out that the store was closed.', korean: '알고 보니 가게가 문을 닫았더라.'),
      WordExample(english: 'Everything turned out fine in the end.', korean: '결국 다 잘 됐어.'),
    ],
    'used to': [
      WordExample(english: 'I used to play the piano when I was a kid.', korean: '어릴 때 피아노를 치곤 했어.'),
      WordExample(english: 'We used to live near the beach.', korean: '예전에 우리는 바닷가 근처에 살았어.'),
      WordExample(english: 'I used to hate vegetables, but now I love them.', korean: '예전엔 채소를 싫어했는데 지금은 좋아해.'),
    ],
    'errand': [
      WordExample(english: 'I have a few errands to run this afternoon.', korean: '오늘 오후에 볼일이 몇 개 있어.'),
      WordExample(english: 'My mom asked me to run an errand to the post office.', korean: '엄마가 우체국 심부름을 부탁하셨어.'),
      WordExample(english: 'I usually do my errands on Saturday morning.', korean: '나는 보통 토요일 아침에 볼일을 봐.'),
    ],
    'chore': [
      WordExample(english: 'Doing the laundry is my least favorite chore.', korean: '빨래는 내가 제일 싫어하는 집안일이야.'),
      WordExample(english: 'We split the household chores between us.', korean: '우리는 집안일을 나눠서 해.'),
      WordExample(english: 'I finished all my chores before lunch.', korean: '점심 전에 집안일을 다 끝냈어.'),
    ],
    'laundry': [
      WordExample(english: 'I do the laundry twice a week.', korean: '나는 일주일에 두 번 빨래를 해.'),
      WordExample(english: 'There\'s a laundry room in the basement.', korean: '지하에 세탁실이 있어.'),
      WordExample(english: 'I forgot to take the laundry out of the machine.', korean: '세탁기에서 빨래 꺼내는 걸 깜빡했어.'),
    ],
    'leftovers': [
      WordExample(english: 'I often eat leftovers for lunch the next day.', korean: '다음 날 점심으로 남은 음식을 자주 먹어.'),
      WordExample(english: 'We had so many leftovers after the party.', korean: '파티 끝나고 남은 음식이 정말 많았어.'),
      WordExample(english: 'Can I take the leftovers home?', korean: '남은 음식 집에 가져가도 돼?'),
    ],
    'takeout': [
      WordExample(english: 'We ordered takeout because we were too tired to cook.', korean: '요리하기 너무 피곤해서 음식을 포장 주문했어.'),
      WordExample(english: 'Chinese takeout is my go-to on Friday nights.', korean: '금요일 밤엔 중국 음식 포장이 내 단골 메뉴야.'),
      WordExample(english: 'The café offers takeout for a lower price.', korean: '그 카페는 포장하면 더 싸게 줘.'),
    ],
    'bargain': [
      WordExample(english: 'These shoes were a real bargain.', korean: '이 신발 정말 싸게 샀어.'),
      WordExample(english: 'My mom loves to bargain at the market.', korean: '엄마는 시장에서 흥정하는 걸 좋아하셔.'),
      WordExample(english: 'I found a great bargain at the outlet.', korean: '아울렛에서 정말 좋은 걸 싸게 건졌어.'),
    ],
    'refund': [
      WordExample(english: 'I asked for a refund because the shirt was too small.', korean: '셔츠가 너무 작아서 환불을 요청했어.'),
      WordExample(english: 'You can get a full refund within 7 days.', korean: '7일 이내면 전액 환불받을 수 있어.'),
      WordExample(english: 'The refund took two weeks to arrive.', korean: '환불금이 들어오는 데 2주 걸렸어.'),
    ],
    'discount': [
      WordExample(english: 'Students get a 20 percent discount here.', korean: '여기서는 학생이 20퍼센트 할인받아.'),
      WordExample(english: 'I bought this jacket at a big discount.', korean: '이 재킷을 크게 할인받아서 샀어.'),
      WordExample(english: 'Is there any discount for members?', korean: '회원 할인 있어?'),
    ],
    'membership': [
      WordExample(english: 'I have a gym membership, but I rarely go.', korean: '헬스장 회원권이 있는데 거의 안 가.'),
      WordExample(english: 'The membership comes with free parking.', korean: '회원이 되면 무료 주차가 돼.'),
      WordExample(english: 'I canceled my membership last month.', korean: '지난달에 회원권을 해지했어.'),
    ],
  };
}
