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
  #text(size: 15pt, weight: "bold")[Grade 6 Science] \
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

#q(1)[Which part of a plant mainly absorbs water from the soil?][#choice[A][Flower] #choice[B][Leaf] #choice[C][Root] #choice[D][Fruit]]
#q(2)[In a food chain, green plants are called producers because they][#choice[A][eat small animals.] #choice[B][make their own food.] #choice[C][break down dead matter.] #choice[D][hunt for food at night.]]
#q(3)[Which of the following is a consumer?][#choice[A][Grass] #choice[B][Mango tree] #choice[C][Goat] #choice[D][Fern]]
#q(4)[Which human body system is mainly responsible for carrying blood around the body?][#choice[A][Digestive system] #choice[B][Circulatory system] #choice[C][Skeletal system] #choice[D][Respiratory system]]
#q(5)[Which habit best helps to prevent the spread of germs?][#choice[A][Sharing a water bottle] #choice[B][Washing hands with soap] #choice[C][Leaving food uncovered] #choice[D][Coughing without covering the mouth]]

#table(columns: (1fr, 1.4fr), align: (left, left), inset: 5pt,
  table.header[*Material*][*Observation in Water*],
  [Salt], [Disappeared after stirring], [Sand], [Settled at the bottom], [Stone], [Sank to the bottom], [Plastic cap], [Floated on top]
)
#q(6)[Which material dissolved in water?][#choice[A][Sand] #choice[B][Stone] #choice[C][Salt] #choice[D][Plastic cap]]
#q(7)[Which material floated on top of the water?][#choice[A][Salt] #choice[B][Sand] #choice[C][Stone] #choice[D][Plastic cap]]
#q(8)[Which state of matter has a fixed shape and a fixed volume?][#choice[A][Solid] #choice[B][Liquid] #choice[C][Gas] #choice[D][Vapour]]
#q(9)[What form of energy is mainly produced by a lit bulb?][#choice[A][Sound energy] #choice[B][Light energy] #choice[C][Magnetic energy] #choice[D][Chemical energy]]
#q(10)[Which force pulls objects towards the Earth?][#choice[A][Friction] #choice[B][Gravity] #choice[C][Magnetism] #choice[D][Electricity]]

#figure(image("../../assets/science_water_cycle.svg", width: 72%), caption: [The water cycle])
#q(11)[Which process changes water vapour into liquid water?][#choice[A][Melting] #choice[B][Freezing] #choice[C][Condensation] #choice[D][Evaporation]]
#q(12)[Which process is shown when water falls from clouds as rain?][#choice[A][Precipitation] #choice[B][Evaporation] #choice[C][Melting] #choice[D][Freezing]]
#q(13)[During a hurricane, which action is safest?][#choice[A][Stand under a tree] #choice[B][Go outside to watch the wind] #choice[C][Stay indoors away from windows] #choice[D][Play near flooded drains]]
#q(14)[In a fair test, what should be changed on purpose?][#choice[A][The controlled variable] #choice[B][The independent variable] #choice[C][All variables] #choice[D][No variables]]
#q(15)[Why should people avoid dumping garbage in gullies and rivers?][#choice[A][It makes the water colder.] #choice[B][It can cause pollution and flooding.] #choice[C][It makes fish grow faster.] #choice[D][It increases rainfall.]]

#pagebreak()
#align(center)[#text(size: 14pt, weight: "bold")[Answer Key]]
#table(columns: (1fr,) * 5, align: center, inset: 5pt,
  [1. C], [2. B], [3. C], [4. B], [5. B],
  [6. C], [7. D], [8. A], [9. B], [10. B],
  [11. C], [12. A], [13. C], [14. B], [15. B]
)
