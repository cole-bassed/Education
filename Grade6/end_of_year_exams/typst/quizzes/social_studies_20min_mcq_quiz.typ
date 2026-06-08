#set page(paper: "us-letter", margin: (x: 0.72in, y: 0.62in))
#set text(font: "Liberation Serif", size: 11pt, lang: "en")
#set par(justify: false, leading: 0.65em)
#set heading(numbering: none)

#let field(label, width: 2.1in) = {
  box(width: width, stroke: (bottom: 0.7pt), inset: (bottom: 3pt))[#label]
}

#let header(subject, subtitle: "20-Minute Multiple-Choice Quiz") = {
  align(center)[
    #text(size: 17pt, weight: "bold")[Porus Primary School]
    #v(0.12em)
    #text(size: 15pt, weight: "bold")[Grade 6 #subject]
    #v(0.08em)
    #text(size: 11pt, style: "italic")[#subtitle]
  ]
  v(0.5em)
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 0.25in,
    field[Name:], field[Grade:], field[Date:]
  )
  v(0.45em)
  block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 7pt)[
    #strong[Instructions:] Read each question carefully. Choose the best answer from A, B, C, or D. Shade or circle only one answer for each question. Total: 15 marks.
  ]
  v(0.65em)
  line(length: 100%, stroke: 0.8pt + rgb("2f5597"))
  v(0.75em)
}

#let choice(letter, body) = {
  box(width: 48%, inset: (y: 0.03em))[#box(width: 1.05em, height: 1.05em, stroke: 0.7pt, radius: 50%)[] #strong[#letter.] #body]
}

#let q(num, body, choices) = {
  block(above: 0.25em, below: 0.55em, breakable: false)[
    #strong[#num.] #body
    #v(0.06em)
    #choices
  ]
}

#let section(title) = {
  block(above: 0.9em, below: 0.35em, fill: rgb("f2f2f2"), stroke: rgb("b7b7b7"), radius: 4pt, inset: 5pt)[#strong[#title]]
}

#header[Social Studies]

#section[Part A: Jamaica - Identity and Government]
#q(1)[Which city is the capital of Jamaica?][#choice[A][Montego Bay] #choice[B][Mandeville] #choice[C][Kingston] #choice[D][Port Antonio]]
#q(2)[Which of the following is a national symbol of Jamaica?][#choice[A][Doctor bird] #choice[B][Lion] #choice[C][Coconut crab] #choice[D][Maple leaf]]
#q(3)[What do the black, green, and gold colours of the Jamaican flag represent?][#choice[A][Hardships, land, and sunshine] #choice[B][Rivers, mountains, and food] #choice[C][Music, sports, and festivals] #choice[D][Cities, roads, and buildings]]
#q(4)[Which National Hero is associated with the Morant Bay Rebellion?][#choice[A][Paul Bogle] #choice[B][Marcus Garvey] #choice[C][Norman Manley] #choice[D][Alexander Bustamante]]

#block(breakable: false)[
  #table(columns: (1fr, 1.4fr), align: (left, left), inset: 5pt,
    table.header[*Level of Government*][*Example of Responsibility*],
    [National government], [Makes laws for the country], [Local government], [Helps manage parish services], [School council], [Supports school activities]
  )
]
#q(5)[Which group is mainly responsible for making laws for Jamaica?][#choice[A][National government] #choice[B][School council] #choice[C][Police station] #choice[D][Parish library]]
#q(6)[Which group helps manage parish services?][#choice[A][Local government] #choice[B][A football club] #choice[C][A supermarket] #choice[D][A tourist hotel]]

#section[Part B: Citizenship and Resources]
#q(7)[A responsible citizen should][#choice[A][ignore community rules.] #choice[B][throw garbage in drains.] #choice[C][respect the rights of others.] #choice[D][damage public property.]]
#q(8)[Which Caribbean country is closest to Jamaica?][#choice[A][Barbados] #choice[B][Cuba] #choice[C][Trinidad and Tobago] #choice[D][Guyana]]
#q(9)[Why is tourism important to Jamaica?][#choice[A][It causes all farms to close.] #choice[B][It provides jobs and earns income.] #choice[C][It stops people from travelling.] #choice[D][It prevents trade with other countries.]]
#q(10)[Which physical feature is found in Jamaica?][#choice[A][Blue Mountains] #choice[B][Sahara Desert] #choice[C][Amazon River] #choice[D][Rocky Mountains]]

#section[Part C: Map Skills and Disaster Preparedness]
#block(breakable: false)[
  #grid(columns: (0.95in, 1fr), column-gutter: 0.2in, align: (center, horizon))[
    #image("../../assets/social_studies_compass.svg", width: 0.85in)
  ][
    Use the compass rose to answer Question 11.
  ]
]
#q(11)[Which direction is opposite north?][#choice[A][East] #choice[B][West] #choice[C][South] #choice[D][North-east]]
#q(12)[On a map, a symbol is used to][#choice[A][make the map heavier.] #choice[B][show information such as roads, rivers, or buildings.] #choice[C][hide important places.] #choice[D][replace the map title.]]
#q(13)[Which activity is an example of agriculture?][#choice[A][Growing yam] #choice[B][Repairing a computer] #choice[C][Driving a tourist bus] #choice[D][Selling insurance]]
#q(14)[Before a hurricane, a family should][#choice[A][prepare an emergency kit.] #choice[B][leave windows open.] #choice[C][go swimming in the sea.] #choice[D][ignore weather reports.]]
#q(15)[Which statement best shows regional cooperation in the Caribbean?][#choice[A][Countries refusing to speak to each other] #choice[B][Caribbean countries working together through CARICOM] #choice[C][Each island closing all schools permanently] #choice[D][People avoiding trade with neighbours]]





