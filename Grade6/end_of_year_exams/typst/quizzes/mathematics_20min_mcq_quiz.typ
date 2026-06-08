#set page(paper: "us-letter", margin: (x: 0.7in, y: 0.55in))
#set text(font: "Liberation Serif", size: 11pt, lang: "en")
#set par(justify: false, leading: 0.55em)
#set heading(numbering: none)
#set list(indent: 0.25in)

#let field(label, width: 2.2in) = {
  box(width: width, stroke: (bottom: 0.7pt), inset: (bottom: 3pt))[#label]
}

#let choice(letter, body) = {
  block(spacing: 0.15em)[#box(width: 1.05em, height: 1.05em, stroke: 0.7pt, radius: 2pt)[] #strong[#letter.] #body]
}

#let q(num, body, choices) = {
  block(above: 0.7em, below: 0.25em)[
    #strong[#num.] #body
    #v(0.25em)
    #choices
  ]
}

#align(center)[
  #text(size: 17pt, weight: "bold")[Porus Primary School] \
  #text(size: 15pt, weight: "bold")[Grade 6 Mathematics] \
  #text(size: 11pt, style: "italic")[20-Minute Multiple-Choice Quiz]
]

#v(0.45em)
#grid(columns: (1fr, 1fr, 1fr), column-gutter: 0.25in,
  field[Name:], field[Grade:], field[Date:]
)

#v(0.35em)
#block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
  #strong[Instructions:] Read each question carefully. Choose the best answer from A, B, C, or D. Shade or circle only one answer for each question. Total: 15 marks.
]

#line(length: 100%, stroke: 0.8pt + rgb("2f5597"))
#v(0.4em)

#q(1)[What is the value of 7,508 + 2,397?][#choice[A][9,805] #choice[B][9,905] #choice[C][10,905] #choice[D][8,905]]
#q(2)[A farmer in Clarendon harvested 36 mangoes. He packed them equally into 6 bags. How many mangoes were in each bag?][#choice[A][5] #choice[B][6] #choice[C][7] #choice[D][8]]
#q(3)[Which fraction is equivalent to $3/4$?][#choice[A][$6/12$] #choice[B][$9/12$] #choice[C][$4/8$] #choice[D][$12/18$]]
#q(4)[What is 0.6 written as a fraction in simplest form?][#choice[A][$3/5$] #choice[B][$6/100$] #choice[C][$1/6$] #choice[D][$5/3$]]
#q(5)[A pencil costs \$45. How much will 4 pencils cost?][#choice[A][\$90] #choice[B][\$135] #choice[C][\$180] #choice[D][\$225]]
#q(6)[Which number is 25% of 80?][#choice[A][10] #choice[B][20] #choice[C][25] #choice[D][40]]
#q(7)[A class begins at 8:30 a.m. and ends at 10:00 a.m. How long is the class?][#choice[A][30 minutes] #choice[B][1 hour] #choice[C][1 hour 30 minutes] #choice[D][2 hours]]
#q(8)[The perimeter of a rectangle is 30 cm. Its length is 10 cm. What is its width?][#choice[A][5 cm] #choice[B][10 cm] #choice[C][15 cm] #choice[D][20 cm]]
#q(9)[Which shape has exactly 3 sides?][#choice[A][Square] #choice[B][Triangle] #choice[C][Pentagon] #choice[D][Hexagon]]
#q(10)[What is the next number in the pattern: 4, 8, 12, 16, \_\_\_?][#choice[A][18] #choice[B][20] #choice[C][22] #choice[D][24]]
#q(11)[If $n + 9 = 17$, what is the value of $n$?][#choice[A][6] #choice[B][7] #choice[C][8] #choice[D][9]]

#figure(image("../../assets/math_fruit_bar_chart.svg", width: 76%), caption: [Favourite fruits chosen by Grade 6 students])
#table(columns: (1fr, 1fr), align: (left, center), inset: 5pt,
  table.header[*Fruit*][*Number of Students*],
  [Mango], [8], [Banana], [5], [Orange], [7], [Pineapple], [4]
)

#q(12)[Which fruit was chosen by the greatest number of students?][#choice[A][Mango] #choice[B][Banana] #choice[C][Orange] #choice[D][Pineapple]]
#q(13)[How many more students chose mango than pineapple?][#choice[A][2] #choice[B][3] #choice[C][4] #choice[D][5]]
#q(14)[A bus has 48 passengers. At a stop, 15 passengers get off and 9 get on. How many passengers are now on the bus?][#choice[A][24] #choice[B][33] #choice[C][42] #choice[D][54]]
#q(15)[A spinner has 4 equal sections: red, blue, green, and yellow. What is the probability of landing on blue?][#choice[A][$1/2$] #choice[B][$1/3$] #choice[C][$1/4$] #choice[D][$1/5$]]

#pagebreak()
#align(center)[#text(size: 14pt, weight: "bold")[Answer Key]]
#table(columns: (1fr,) * 5, align: center, inset: 5pt,
  [1. B], [2. B], [3. B], [4. A], [5. C],
  [6. B], [7. C], [8. A], [9. B], [10. B],
  [11. C], [12. A], [13. C], [14. C], [15. C]
)
