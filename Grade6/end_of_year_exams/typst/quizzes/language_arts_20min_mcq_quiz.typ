#set page(paper: "us-letter", margin: (x: 0.5in, y: 0.25in))
#set text(font: "Liberation Serif", size: 11pt, lang: "en")
#set par(justify: false, leading: 0.65em)
#set heading(numbering: none)

#let field(label, width: 2in) = {
  box(width: width, stroke: (bottom: 0.7pt), inset: (bottom: 3pt))[#label]
}

#let header(subject, subtitle: "20-Minute Multiple-Choice Quiz") = {
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
  block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
    #strong[Instructions:] Read each question carefully. Choose the best answer from A, B, C, or D. Shade or circle only one answer for each question. Total: 15 marks.
  ]
  line(length: 100%, stroke: 0.8pt + rgb("2f5597"))
}

#let choice(letter, body) = {
  box(width: 48%, inset: (y: 0.03em))[#box(
      width: 1.05em,
      height: 1.05em,
      stroke: 0.7pt,
      radius: 50%,
    )[] #strong[#letter.] #body]
}

#let question(num, body, choices) = {
  block(above: 1.5em, below: 0em, breakable: false)[
    #strong[#num.] #body
    #v(-.5em)
    #choices
  ]
}

#let section(title) = {
  block(above: 1.5em, below: 1em, fill: rgb("f2f2f2"), stroke: rgb("b7b7b7"), radius: 4pt, inset: 5pt)[#strong[#title]]
}

#header[Language Arts]

#section[Part A: Reading Comprehension]
#block(fill: rgb("fff8e8"), stroke: rgb("c28a00"), radius: 5pt, inset: 10pt)[
  On Saturday morning, Keisha helped her grandmother at the market in Porus. The stall was filled with callaloo, tomatoes, ripe bananas, and Scotch bonnet peppers. Keisha noticed that some customers brought reusable bags instead of plastic bags. Her grandmother smiled and said, "Small choices can help to keep Jamaica clean." By midday, Keisha had learned how to count change, greet customers politely, and pack the vegetables carefully.
]
#question(
  1,
)[Where did Keisha go on Saturday morning?][#choice[A][To school] #choice[B][To the market] #choice[C][To church] #choice[D][To the beach]]

#question(
  2,
)[Which word best describes Keisha's grandmother?][#choice[A][Helpful] #choice[B][Careless] #choice[C][Angry] #choice[D][Lazy]]

#question(
  3,
)[What lesson did Keisha's grandmother teach her?][#choice[A][Markets should close early.] #choice[B][Vegetables are hard to grow.] #choice[C][Small choices can help the environment.] #choice[D][Customers should never use bags.]]

#question(
  4,
)[In the passage, the word "politely" means acting in a way that is][#choice[A][rude.] #choice[B][respectful.] #choice[C][noisy.] #choice[D][hurried.]]

#question(
  5,
)[Which activity did Keisha learn at the market?][#choice[A][Painting signs] #choice[B][Counting change] #choice[C][Driving a taxi] #choice[D][Cooking soup]]

#section[Part B: Language Use]
#block(breakable: false)[
  #table(
    columns: (1fr, 1fr),
    align: (left, left),
    inset: 4pt,
    table.header[*Word*][*Part of Speech*],
    [quickly], [adverb],
    [teacher], [noun],
    [beautiful], [adjective],
    [jump], [verb],
  )
]
#question(
  6,
)[Which word in the table names a person?][#choice[A][quickly] #choice[B][teacher] #choice[C][beautiful] #choice[D][jump]]

#question(
  7,
)[Which sentence uses correct subject-verb agreement?][#choice[A][The boys runs quickly.] #choice[B][The boy run quickly.] #choice[C][The boys run quickly.] #choice[D][The boys running quickly.]]

#question(
  8,
)[Choose the correctly punctuated sentence.][#choice[A][We visited Kingston Montego Bay and Mandeville.] #choice[B][We visited Kingston, Montego Bay, and Mandeville.] #choice[C][We visited Kingston Montego Bay, and Mandeville.] #choice[D][We visited, Kingston, Montego Bay and Mandeville.]]

#question(
  9,
)[Which word is the antonym of "generous"?][#choice[A][kind] #choice[B][giving] #choice[C][selfish] #choice[D][cheerful]]

#question(
  10,
)[Which sentence is written in the past tense?][#choice[A][I walk to school.] #choice[B][I am walking to school.] #choice[C][I walked to school.] #choice[D][I will walk to school.]]

#section[Part C: Vocabulary and Writing Skills]

#question(
  11,
)[Which word correctly completes the sentence? Maria and I blank going to the library.][#choice[A][is] #choice[B][am] #choice[C][are] #choice[D][was]]

#question(
  12,
)[Which sentence contains a simile?][#choice[A][The sun rose over the hill.] #choice[B][The boy ran like lightning.] #choice[C][The book was on the desk.] #choice[D][The rain fell all afternoon.]]

#question(
  13,
)[Which prefix can be added to "happy" to mean not happy?][#choice[A][re-] #choice[B][un-] #choice[C][pre-] #choice[D][mis-]]

#question(
  14,
)[Which sentence is a complete sentence?][#choice[A][After the bell rang.] #choice[B][The students in the classroom.] #choice[C][Running quickly to the gate.] #choice[D][The students packed their bags.]]

#question(
  15,
)[Which word should begin with a capital letter?][#choice[A][mango] #choice[B][river] #choice[C][jamaica] #choice[D][school]]
