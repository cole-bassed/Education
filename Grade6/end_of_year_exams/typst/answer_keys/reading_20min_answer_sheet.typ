#import "../main.typ": answer-key, bubble, section
#show: answer-key.with(subject: "Reading")

#block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
  Teacher key for the mixed-format Reading Skills Quiz. Total: 15 marks.
]

#section[Part A: Multiple Choice — 4 marks]

#block(breakable: false)[
  #table(
    columns: (0.7fr, 1fr, 1fr, 1fr, 1fr),
    align: center,
    inset: 5pt,
    stroke: rgb("999999"),
    table.header[*Q*][*A*][*B*][*C*][*D*],
    [1], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
    [2], [#bubble("A", correct: true)], [#bubble("B", correct: false)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
    [3], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
    [4], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  )
]

#section[Parts B–D: Objective Answers — 9 marks]

#block(breakable: false)[
  #table(
    columns: (0.65fr, 2.4fr, 0.65fr),
    align: (center, left, center),
    inset: 5pt,
    stroke: rgb("999999"),
    table.header[*Q*][*Answer*][*Marks*],
    [5], [Porus], [1],
    [6], [seeds], [1],
    [7], [thirsty], [1],
    [8], [True], [1],
    [9], [False], [1],
    [10], [True], [1],
    [11], [B], [1],
    [12], [A], [1],
    [13], [C], [1],
  )
]

#section[Part E: Short Response — 2 marks]

#block(breakable: false)[
  #table(
    columns: (2.8fr, 0.7fr),
    align: (left, center),
    inset: 5pt,
    stroke: rgb("999999"),
    table.header[*Criteria*][*Marks*],
    [States a suitable lesson about teamwork, kindness, or helping the community.], [1],
    [Uses one accurate detail from the passage, such as Maya helping the children or everyone caring for the garden.], [1],
  )
]

#v(0.6em)
#block(fill: rgb("e2f0d9"), stroke: rgb("6aa84f"), radius: 5pt, inset: 7pt)[
  *Total: 15 marks.*
]
