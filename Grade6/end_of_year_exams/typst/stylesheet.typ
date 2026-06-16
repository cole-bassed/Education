// #let page-paper = "us-letter"
// #let page-margin = (x: 0.5in, y: 0.25in)
// #let body-font = "Liberation Serif"
// #let body-size = 11pt
// #let body-lang = "en"
// #let par-leading = 0.65em

// #let field(label, width: 2in) = {
//   box(width: width, stroke: (bottom: 0.7pt), inset: (bottom: 3pt))[#label]
// }

// #let header(subject, subtitle: "20-Minute Multiple-Choice Quiz", instructions: none) = {
//   align(center)[
//     #text(size: 17pt, weight: "bold")[Porus Primary School]
//     #v(-.75em)
//     #text(size: 15pt, weight: "bold")[Grade 6 #subject]
//     #v(-0.250em)
//     #text(size: 11pt, style: "italic")[#subtitle]
//   ]
//   v(0.5em)
//   grid(
//     columns: (1fr, 1fr, 1fr),
//     column-gutter: 0.25in,
//     field[Name:], field[Grade:], field[Date:],
//   )
//   let default-instructions = [Read each question carefully. Choose the best answer from A, B, C, or D. Shade or circle only one answer for each question.]
//   block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
//     #strong[Instructions:] #if instructions != none { instructions } else { default-instructions }
//   ]
//   line(length: 100%, stroke: 0.8pt + rgb("2f5597"))
// }

// #let choice(letter, body) = {
//   box(width: 48%, inset: (y: 0.03em))[#box(
//       width: 1.05em,
//       height: 1.05em,
//       stroke: 0.7pt,
//       radius: 50%,
//     )[] #strong[#letter.] #body]
// }
// #let question(num, body, a, b, c, d) = {
//   block(above: 1.5em, below: 0em, breakable: false)[
//     #strong[#num.] #body
//     #v(-.5em)
//     #grid(
//       columns: (1fr, 1fr),
//       row-gutter: 0.4em,
//       a, c,
//       b, d,
//     )
//   ]
// }

// #let section(title) = {
//   block(
//     above: 1.5em,
//     below: 1em,
//     fill: rgb("f2f2f2"),
//     stroke: rgb("b7b7b7"),
//     radius: 4pt,
//     inset: 5pt,
//   )[#strong[#title]]
// }

// // --- Short Answer Helpers ---
// #let blank-line(width) = {
//   box(width: width, stroke: (bottom: 0.7pt), inset: (bottom: 2pt))[]
// }

// #let short-answer(num, body, line-width: 1.35in) = {
//   block(above: 0.9em, below: 0em, breakable: false)[
//     #strong[#num.] #body #blank-line(line-width)
//   ]
// }

// #let short-answer-lines(num, body, lines: 2, line-width: 100%) = {
//   block(above: 0.9em, below: 0em, breakable: false)[
//     #strong[#num.] #body
//     #for i in range(lines) {
//       v(0.6em)
//       line(length: line-width, stroke: 0.7pt)
//     }
//   ]
// }

// // --- True/False Helper ---
// #let tf-box() = {
//   box(width: 1.1em, height: 1.1em, stroke: 0.7pt, inset: 0pt)[#align(center + horizon)[]]
// }

// #let true-false(num, body) = {
//   block(above: 0.9em, below: 0em, breakable: false)[
//     #tf-box() #strong[#num.] #body
//   ]
// }

// // --- Matching Helper ---
// #let match-row(num, skill, answer) = {
//   block(above: 0.6em, below: 0em, breakable: false)[
//     #grid(
//       columns: (0.35in, 2fr, 3fr),
//       column-gutter: 0.15in,
//       align: (center + horizon, left, left),
//       blank-line(0.35in), [#strong[#num.] #skill], answer,
//     )
//   ]
// }

// #let match-table(skills, answers) = {
//   block(breakable: false)[
//     #table(
//       columns: (0.4in, 1fr, 3fr),
//       align: (center, left, left),
//       inset: 4pt,
//       stroke: rgb("999999"),
//       table.header[][*Skill*][*Answer Choices*],
//       ..for i in range(skills.len()) {
//         ([], skills.at(i), answers.at(i))
//       },
//     )
//   ]
// }

// #let bubble(letter, correct: false) = {
//   box(
//     width: 1.55em,
//     height: 1.55em,
//     radius: 50%,
//     stroke: 0.8pt + rgb("555555"),
//     fill: if correct { rgb("b7d7a8") } else { none },
//     inset: 0pt,
//   )[#align(center + horizon)[#strong[#letter]]]
// }

// #let answer-key-header(subject) = {
//   align(center)[
//     #text(size: 17pt, weight: "bold")[Porus Primary School]
//     #v(0.12em)
//     #text(size: 15pt, weight: "bold")[Grade 6 #subject]
//     #v(0.08em)
//     #text(size: 12pt, weight: "bold")[Teacher Answer Sheet]
//   ]
//   v(0.7em)
//   block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
//     Correct answers are shaded in green. Keep this file separate from student papers.
//   ]
//   v(0.8em)
// }

#let page-paper = "us-letter"
#let page-margin = (x: 0.5in, y: 0.25in)
#let body-font = "Liberation Serif"
#let body-size = 11pt
#let body-lang = "en"
#let par-leading = 0.65em

#let field(label, width: 2in) = {
  box(width: width, stroke: (bottom: 0.7pt), inset: (bottom: 3pt))[#label]
}

#let header(subject, subtitle: "20-Minute Multiple-Choice Quiz", instructions: none) = {
  align(center)[
    #text(size: 17pt, weight: "bold")[Porus Primary School]
    #v(-.75em)
    #text(size: 15pt, weight: "bold")[Grade 6 #subject]
    #v(-0.250em)
    #text(size: 11pt, style: "italic")[#subtitle]
  ]
  v(0.5em)
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 0.25in,
    field[Name:], field[Grade:], field[Date:],
  )
  let default-instructions = [Read each question carefully. Choose the best answer from A, B, C, or D. Shade or circle only one answer for each question.]
  block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
    #strong[Instructions:] #if instructions != none { instructions } else { default-instructions }
  ]
  line(length: 100%, stroke: 0.8pt + rgb("2f5597"))
}

// --- Multiple Choice Helper ---
// Usage:
// #multiple-choice(1, [What is the best title?],
//   a: [A Rainy School Day],
//   b: [The Community Garden],
//   c: [A Trip to Kingston],
//   d: [Andre's New Bicycle],
// )
#let multiple-choice(num, body, a: none, b: none, c: none, d: none) = {
  let make-choice(letter, content) = {
    if content != none {
      [#box(width: 1.05em, height: 1.05em, stroke: 0.7pt, radius: 50%)[] #strong[#letter.] #content]
    }
  }
  block(above: 1.5em, below: 0em, breakable: false)[
    #strong[#num.] #body
    #v(-.3em)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0.25in,
      row-gutter: 0.4em,
      make-choice("A", a), make-choice("C", c),
      make-choice("B", b), make-choice("D", d),
    )
  ]
}

#let section(title) = {
  block(
    above: 1.5em,
    below: 1em,
    fill: rgb("f2f2f2"),
    stroke: rgb("b7b7b7"),
    radius: 4pt,
    inset: 5pt,
  )[#strong[#title]]
}

// --- Short Answer Helpers ---
#let blank-line(width) = {
  box(width: width, stroke: (bottom: 0.7pt), inset: (bottom: 2pt))[]
}

#let short-answer(num, body, line-width: 1.35in) = {
  block(above: 0.9em, below: 0em, breakable: false)[
    #strong[#num.] #body #blank-line(line-width)
  ]
}

#let short-answer-lines(num, body, lines: 2, line-width: 100%) = {
  block(above: 0.9em, below: 0em, breakable: false)[
    #strong[#num.] #body
    #for i in range(lines) {
      v(0.6em)
      line(length: line-width, stroke: 0.7pt)
    }
  ]
}

// --- True/False Helper ---
#let tf-box() = {
  box(width: 1.1em, height: 1.1em, stroke: 0.7pt, inset: 0pt)[#align(center + horizon)[]]
}

#let true-false(num, body) = {
  block(above: 0.9em, below: 0em, breakable: false)[
    #tf-box() #strong[#num.] #body
  ]
}

// --- Matching Helper ---
#let match-table(skills, answers) = {
  block(breakable: false)[
    #table(
      columns: (0.4in, 1fr, 3fr),
      align: (center, left, left),
      inset: 4pt,
      stroke: rgb("999999"),
      table.header[][*Skill*][*Answer Choices*],
      ..for i in range(skills.len()) {
        ([], skills.at(i), answers.at(i))
      },
    )
  ]
}

#let bubble(letter, correct: false) = {
  box(
    width: 1.55em,
    height: 1.55em,
    radius: 50%,
    stroke: 0.8pt + rgb("555555"),
    fill: if correct { rgb("b7d7a8") } else { none },
    inset: 0pt,
  )[#align(center + horizon)[#strong[#letter]]]
}

#let answer-key-header(subject) = {
  align(center)[
    #text(size: 17pt, weight: "bold")[Porus Primary School]
    #v(0.12em)
    #text(size: 15pt, weight: "bold")[Grade 6 #subject]
    #v(0.08em)
    #text(size: 12pt, weight: "bold")[Teacher Answer Sheet]
  ]
  v(0.7em)
  block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
    Correct answers are shaded in green. Keep this file separate from student papers.
  ]
  v(0.8em)
}
