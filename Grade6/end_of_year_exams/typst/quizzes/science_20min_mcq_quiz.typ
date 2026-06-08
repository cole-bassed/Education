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


#header[Science]

#section[Part A: Living Things and Human Body Systems]
#question(
  1,
)[Which part of a plant mainly absorbs water from the soil?][#choice[A][Flower] #choice[B][Leaf] #choice[C][Root] #choice[D][Fruit]]
#question(
  2,
)[In a food chain, green plants are called producers because they][#choice[A][eat small animals.] #choice[B][make their own food.] #choice[C][break down dead matter.] #choice[D][hunt for food at night.]]
#question(
  3,
)[Which of the following is a consumer?][#choice[A][Grass] #choice[B][Mango tree] #choice[C][Goat] #choice[D][Fern]]
#question(
  4,
)[Which human body system is mainly responsible for carrying blood around the body?][#choice[A][Digestive system] #choice[B][Circulatory system] #choice[C][Skeletal system] #choice[D][Respiratory system]]
#question(
  5,
)[Which body system breaks down food so nutrients can be absorbed?][#choice[A][Digestive system] #choice[B][Respiratory system] #choice[C][Skeletal system] #choice[D][Nervous system]]
#question(
  6,
)[The main purpose of the reproductive system is to][#choice[A][pump blood.] #choice[B][remove waste from the body.] #choice[C][help living things produce offspring.] #choice[D][protect the brain and spinal cord.]]
#question(
  7,
)[Which habit best helps to prevent the spread of germs?][#choice[A][Sharing a water bottle] #choice[B][Washing hands with soap] #choice[C][Leaving food uncovered] #choice[D][Coughing without covering the mouth]]

#block(breakable: false)[
  #section[Part B: Materials, Forces, and Energy]
  #table(
    columns: (1fr, 1.4fr),
    align: (left, left),
    inset: 4pt,
    table.header[*Material*][*Observation in Water*],
    [Salt], [Disappeared after stirring],
    [Sand], [Settled at the bottom],
    [Stone], [Sank to the bottom],
    [Plastic cap], [Floated on top],
  )
]
#question(
  8,
)[Which material dissolved in water?][#choice[A][Sand] #choice[B][Stone] #choice[C][Salt] #choice[D][Plastic cap]]
#question(
  9,
)[Which state of matter has a fixed shape and a fixed volume?][#choice[A][Solid] #choice[B][Liquid] #choice[C][Gas] #choice[D][Vapour]]
#question(
  10,
)[What form of energy is mainly produced by a lit bulb?][#choice[A][Sound energy] #choice[B][Light energy] #choice[C][Magnetic energy] #choice[D][Chemical energy]]
#question(
  11,
)[Which force pulls objects towards the Earth?][#choice[A][Friction] #choice[B][Gravity] #choice[C][Magnetism] #choice[D][Electricity]]

#section[Part C: Earth Science and Scientific Thinking]
#image("../../assets/science_water_cycle.svg", width: 4.65in,)
Use the water cycle diagram to answer Questions 12 and 13.

#question(
  12,
)[Which process changes water vapour into liquid water?][#choice[A][Melting] #choice[B][Freezing] #choice[C][Condensation] #choice[D][Evaporation]]
#question(
  13,
)[Which process is shown when water falls from clouds as rain?][#choice[A][Precipitation] #choice[B][Evaporation] #choice[C][Melting] #choice[D][Freezing]]
#question(
  14,
)[In a fair test, what should be changed on purpose?][#choice[A][The controlled variable] #choice[B][The independent variable] #choice[C][All variables] #choice[D][No variables]]
#question(
  15,
)[Why should people avoid dumping garbage in gullies and rivers?][#choice[A][It makes the water colder.] #choice[B][It can cause pollution and flooding.] #choice[C][It makes fish grow faster.] #choice[D][It increases rainfall.]]
