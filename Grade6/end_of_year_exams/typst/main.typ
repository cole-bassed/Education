#import "stylesheet.typ" as styles

#let choice = styles.choice
#let question = styles.question
#let section = styles.section
#let bubble = styles.bubble

#let quiz(body, subject: none, subtitle: "20-Minute Multiple-Choice Quiz") = {
  set page(paper: styles.page-paper, margin: styles.page-margin)
  set text(
    font: styles.body-font,
    size: styles.body-size,
    lang: styles.body-lang,
  )
  set par(justify: false, leading: styles.par-leading)
  set heading(numbering: none)

  styles.header(subject, subtitle: subtitle)
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
