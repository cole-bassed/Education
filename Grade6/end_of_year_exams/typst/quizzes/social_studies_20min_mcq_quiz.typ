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
  #text(size: 15pt, weight: "bold")[Grade 6 Social Studies] \
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

#q(1)[Which city is the capital of Jamaica?][#choice[A][Montego Bay] #choice[B][Mandeville] #choice[C][Kingston] #choice[D][Port Antonio]]
#q(2)[Which of the following is a national symbol of Jamaica?][#choice[A][Doctor bird] #choice[B][Lion] #choice[C][Coconut crab] #choice[D][Maple leaf]]
#q(3)[What do the black, green, and gold colours of the Jamaican flag represent?][#choice[A][Hardships, land, and sunshine] #choice[B][Rivers, mountains, and food] #choice[C][Music, sports, and festivals] #choice[D][Cities, roads, and buildings]]
#q(4)[Which National Hero is known for leading enslaved Africans in the fight for freedom and was associated with the Morant Bay Rebellion?][#choice[A][Paul Bogle] #choice[B][Marcus Garvey] #choice[C][Norman Manley] #choice[D][Alexander Bustamante]]

#table(columns: (1fr, 1.4fr), align: (left, left), inset: 5pt,
  table.header[*Level of Government*][*Example of Responsibility*],
  [National government], [Makes laws for the country], [Local government], [Helps manage parish services], [School council], [Supports school activities]
)
#q(5)[Which group is mainly responsible for making laws for Jamaica?][#choice[A][National government] #choice[B][School council] #choice[C][Police station] #choice[D][Parish library]]
#q(6)[Which group helps manage parish services?][#choice[A][Local government] #choice[B][A football club] #choice[C][A supermarket] #choice[D][A tourist hotel]]
#q(7)[A responsible citizen should][#choice[A][ignore community rules.] #choice[B][throw garbage in drains.] #choice[C][respect the rights of others.] #choice[D][damage public property.]]
#q(8)[Which Caribbean country is closest to Jamaica?][#choice[A][Barbados] #choice[B][Cuba] #choice[C][Trinidad and Tobago] #choice[D][Guyana]]
#q(9)[Why is tourism important to Jamaica?][#choice[A][It causes all farms to close.] #choice[B][It provides jobs and earns income.] #choice[C][It stops people from travelling.] #choice[D][It prevents trade with other countries.]]
#q(10)[Which physical feature is found in Jamaica?][#choice[A][Blue Mountains] #choice[B][Sahara Desert] #choice[C][Amazon River] #choice[D][Rocky Mountains]]

#figure(image("../../assets/social_studies_compass.svg", width: 48%), caption: [Compass rose])
#q(11)[Which direction is opposite north?][#choice[A][East] #choice[B][West] #choice[C][South] #choice[D][North-east]]
#q(12)[On a map, a symbol is used to][#choice[A][make the map heavier.] #choice[B][show information such as roads, rivers, or buildings.] #choice[C][hide important places.] #choice[D][replace the map title.]]
#q(13)[Which activity is an example of agriculture?][#choice[A][Growing yam] #choice[B][Repairing a computer] #choice[C][Driving a tourist bus] #choice[D][Selling insurance]]
#q(14)[Before a hurricane, a family should][#choice[A][prepare an emergency kit.] #choice[B][leave windows open.] #choice[C][go swimming in the sea.] #choice[D][ignore weather reports.]]
#q(15)[Which statement best shows regional cooperation in the Caribbean?][#choice[A][Countries refusing to speak to each other] #choice[B][Caribbean countries working together through CARICOM] #choice[C][Each island closing all schools permanently] #choice[D][People avoiding trade with neighbours]]

#pagebreak()
#align(center)[#text(size: 14pt, weight: "bold")[Answer Key]]
#table(columns: (1fr,) * 5, align: center, inset: 5pt,
  [1. C], [2. A], [3. A], [4. A], [5. A],
  [6. A], [7. C], [8. B], [9. B], [10. A],
  [11. C], [12. B], [13. A], [14. A], [15. B]
)
