// #import "stylesheet.typ" as styles

// #let choice = styles.choice
// #let question = styles.question
// #let section = styles.section
// #let bubble = styles.bubble
// #let blank-line = styles.blank-line
// #let short-answer = styles.short-answer
// #let short-answer-lines = styles.short-answer-lines
// #let tf-box = styles.tf-box
// #let true-false = styles.true-false
// #let match-row = styles.match-row
// #let match-table = styles.match-table

// #let quiz(body, subject: none, subtitle: "20-Minute Multiple-Choice Quiz", instructions: none) = {
//   set page(paper: styles.page-paper, margin: styles.page-margin)
//   set text(
//     font: styles.body-font,
//     size: styles.body-size,
//     lang: styles.body-lang,
//   )
//   set par(justify: false, leading: styles.par-leading)
//   set heading(numbering: none)

//   styles.header(subject, subtitle: subtitle, instructions: instructions)
//   body
// }

// #let answer-key(body, subject: none) = {
//   set page(paper: styles.page-paper, margin: styles.page-margin)
//   set text(
//     font: styles.body-font,
//     size: styles.body-size,
//     lang: styles.body-lang,
//   )
//   set par(justify: false, leading: styles.par-leading)
//   set heading(numbering: none)

//   styles.answer-key-header(subject)
//   body
// }

#import "stylesheet.typ" as styles

#let multiple-choice = styles.multiple-choice
#let section = styles.section
#let bubble = styles.bubble
#let blank-line = styles.blank-line
#let short-answer = styles.short-answer
#let short-answer-lines = styles.short-answer-lines
#let tf-box = styles.tf-box
#let true-false = styles.true-false
#let match-table = styles.match-table

#let quiz(body, subject: none, subtitle: "20-Minute Multiple-Choice Quiz", instructions: none) = {
  set page(paper: styles.page-paper, margin: styles.page-margin)
  set text(
    font: styles.body-font,
    size: styles.body-size,
    lang: styles.body-lang,
  )
  set par(justify: false, leading: styles.par-leading)
  set heading(numbering: none)

  styles.header(subject, subtitle: subtitle, instructions: instructions)
  body
}

#let answer-key(body, subject: none) = {
  set page(paper: styles.page-paper, margin: styles.page-margin)
  set text(
    font: styles.body-font,
    size: styles.body-size,
    lang: styles.body-lang,
  )
  set par(justify: false, leading: styles.par-leading)
  set heading(numbering: none)

  styles.answer-key-header(subject)
  body
}
