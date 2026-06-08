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
    #v(.5em)
  ]
}

#let section(title) = {
  block(above: 1.75em, below: 1em, fill: rgb("f2f2f2"), stroke: rgb("b7b7b7"), radius: 4pt, inset: 5pt)[#strong[#title]]
}


#header[Mathematics]

#section[Number, Operations, and Money]
#question(
  1,
)[What is the value of 7,508 + 2,397?][#choice[A][9,805] #choice[B][9,905] #choice[C][10,905] #choice[D][8,905]]
#question(
  2,
)[A farmer in Clarendon harvested 36 mangoes. He packed them equally into 6 bags. How many mangoes were in each bag?][#choice[A][5] #choice[B][6] #choice[C][7] #choice[D][8]]
#question(
  3,
)[A shopkeeper sold a book for \$850 and a pen for \$125. How much did the customer spend altogether?][#choice[A][\$725] #choice[B][\$875] #choice[C][\$975] #choice[D][\$1,025]]
#question(
  4,
)[What is 0.6 written in words?][#choice[A][six] #choice[B][six tenths] #choice[C][six hundredths] #choice[D][sixty tens]]
#question(
  5,
)[A pencil costs \$45. How much will 4 pencils cost?][#choice[A][\$90] #choice[B][\$135] #choice[C][\$180] #choice[D][\$225]]
#question(6)[Which number is 25% of 80?][#choice[A][10] #choice[B][20] #choice[C][25] #choice[D][40]]

#section[Measurement, Geometry, and Algebra]
#block(breakable: false)[
  #question(
    7,
  )[A class begins at 8:30 a.m. and ends at 10:00 a.m. How long is the class?][#choice[A][30 minutes] #choice[B][1 hour] #choice[C][1 hour 30 minutes] #choice[D][2 hours]]
]
#question(
  8,
)[The perimeter of a rectangle is 30 cm. Its length is 10 cm. What is its width?][#choice[A][5 cm] #choice[B][10 cm] #choice[C][15 cm] #choice[D][20 cm]]
#question(
  9,
)[Which shape has exactly 3 sides?][#choice[A][Square] #choice[B][Triangle] #choice[C][Pentagon] #choice[D][Hexagon]]
#question(
  10,
)[What is the next number in the pattern: 4, 8, 12, 16, blank?][#choice[A][18] #choice[B][20] #choice[C][22] #choice[D][24]]
#question(
  11,
)[If a number plus 9 equals 17, what is the number?][#choice[A][6] #choice[B][7] #choice[C][8] #choice[D][9]]

#section[Data Handling and Probability]
#block(breakable: false)[
  #grid(columns: (1.5fr, 1fr), column-gutter: 0.2in, align: (center, top))[
    #figure(image("../../assets/math_fruit_bar_chart.svg", width: 3.0in), caption: [Favourite fruits])
  ][
    #set text(size: 12pt)
    #table(
      columns: (1fr, 1fr),
      align: (left, center),
      inset: 3pt,
      table.header[*Fruit*][*Students*],
      [Mango], [8],
      [Banana], [5],
      [Orange], [7],
      [Pineapple], [4],
    )
  ]
]

#question(
  12,
)[Which fruit was chosen by the greatest number of students?][#choice[A][Mango] #choice[B][Banana] #choice[C][Orange] #choice[D][Pineapple]]
#question(
  13,
)[How many more students chose mango than pineapple?][#choice[A][2] #choice[B][3] #choice[C][4] #choice[D][5]]
#question(
  14,
)[A bus has 48 passengers. At a stop, 15 passengers get off and 9 get on. How many passengers are now on the bus?][#choice[A][24] #choice[B][33] #choice[C][42] #choice[D][54]]
#question(
  15,
)[A spinner has 4 equal sections: red, blue, green, and yellow. Which colour is just as likely to be chosen as blue?][#choice[A][Red] #choice[B][Black] #choice[C][White] #choice[D][Brown]]
