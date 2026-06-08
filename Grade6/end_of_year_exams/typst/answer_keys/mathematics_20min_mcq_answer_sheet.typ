#set page(paper: "us-letter", margin: (x: 0.72in, y: 0.62in))
#set text(font: "Liberation Serif", size: 11pt, lang: "en")
#set heading(numbering: none)

#let bubble(letter, correct: false) = {
  box(width: 1.55em, height: 1.55em, radius: 50%, stroke: 0.8pt + rgb("555555"), fill: if correct { rgb("b7d7a8") } else { none }, inset: 0pt)[#align(center + horizon)[#strong[#letter]]]
}

#align(center)[
  #text(size: 17pt, weight: "bold")[Porus Primary School]
  #v(0.12em)
  #text(size: 15pt, weight: "bold")[Grade 6 Mathematics]
  #v(0.08em)
  #text(size: 12pt, weight: "bold")[Teacher Answer Sheet]
]#v(0.7em)
#block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
  Correct answers are shaded in green. Keep this file separate from student papers.
]
#v(0.8em)
#block(breakable: false)[
#table(columns: (0.7fr, 1fr, 1fr, 1fr, 1fr), align: center, inset: 6pt, stroke: rgb("999999"),
  table.header[*Question*][*A*][*B*][*C*][*D*],
  [1], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [2], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [3], [#bubble("A", correct: false)], [#bubble("B", correct: false)], [#bubble("C", correct: true)], [#bubble("D", correct: false)],
  [4], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [5], [#bubble("A", correct: false)], [#bubble("B", correct: false)], [#bubble("C", correct: true)], [#bubble("D", correct: false)],
  [6], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [7], [#bubble("A", correct: false)], [#bubble("B", correct: false)], [#bubble("C", correct: true)], [#bubble("D", correct: false)],
  [8], [#bubble("A", correct: true)], [#bubble("B", correct: false)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [9], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [10], [#bubble("A", correct: false)], [#bubble("B", correct: true)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [11], [#bubble("A", correct: false)], [#bubble("B", correct: false)], [#bubble("C", correct: true)], [#bubble("D", correct: false)],
  [12], [#bubble("A", correct: true)], [#bubble("B", correct: false)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
  [13], [#bubble("A", correct: false)], [#bubble("B", correct: false)], [#bubble("C", correct: true)], [#bubble("D", correct: false)],
  [14], [#bubble("A", correct: false)], [#bubble("B", correct: false)], [#bubble("C", correct: true)], [#bubble("D", correct: false)],
  [15], [#bubble("A", correct: true)], [#bubble("B", correct: false)], [#bubble("C", correct: false)], [#bubble("D", correct: false)],
)
]
