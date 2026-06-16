#import "../main.typ": *
#show: quiz.with(subject: "Science")

#section[Part A: Living Things and Human Body Systems]

#multiple-choice(
  1,
  [Which part of a plant mainly absorbs water from the soil?],
  a: [Flower],
  b: [Leaf],
  c: [Root],
  d: [Fruit],
)
#multiple-choice(
  2,
  [In a food chain, green plants are called producers because they],
  a: [eat small animals.],
  b: [make their own food.],
  c: [break down dead matter.],
  d: [hunt for food at night.],
)
#multiple-choice(3, [Which of the following is a consumer?], a: [Grass], b: [Mango tree], c: [Goat], d: [Fern])
#multiple-choice(
  4,
  [Which human body system is mainly responsible for carrying blood around the body?],
  a: [Digestive system],
  b: [Circulatory system],
  c: [Skeletal system],
  d: [Respiratory system],
)
#multiple-choice(
  5,
  [Which body system breaks down food so nutrients can be absorbed?],
  a: [Digestive system],
  b: [Respiratory system],
  c: [Skeletal system],
  d: [Nervous system],
)
#multiple-choice(
  6,
  [The main purpose of the reproductive system is to],
  a: [pump blood.],
  b: [remove waste from the body.],
  c: [help living things produce offspring.],
  d: [protect the brain and spinal cord.],
)
#multiple-choice(
  7,
  [Which habit best helps to prevent the spread of germs?],
  a: [Sharing a water bottle],
  b: [Washing hands with soap],
  c: [Leaving food uncovered],
  d: [Coughing without covering the mouth],
)

#section[Part B: Materials, Forces, and Energy]
#block(breakable: false)[
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

#multiple-choice(8, [Which material dissolved in water?], a: [Sand], b: [Stone], c: [Salt], d: [Plastic cap])
#multiple-choice(
  9,
  [Which state of matter has a fixed shape and a fixed volume?],
  a: [Solid],
  b: [Liquid],
  c: [Gas],
  d: [Vapour],
)
#multiple-choice(
  10,
  [What form of energy is mainly produced by a lit bulb?],
  a: [Sound energy],
  b: [Light energy],
  c: [Magnetic energy],
  d: [Chemical energy],
)
#multiple-choice(
  11,
  [Which force pulls objects towards the Earth?],
  a: [Friction],
  b: [Gravity],
  c: [Magnetism],
  d: [Electricity],
)

#section[Part C: Earth Science and Scientific Thinking]

#align(center)[
  #image("../../assets/science_water_cycle.svg", width: 3.65in)
  Use the water cycle diagram to answer Questions 12 and 13.
]

#multiple-choice(
  12,
  [Which process changes water vapour into liquid water?],
  a: [Melting],
  b: [Freezing],
  c: [Condensation],
  d: [Evaporation],
)
#multiple-choice(
  13,
  [Which process is shown when water falls from clouds as rain?],
  a: [Precipitation],
  b: [Evaporation],
  c: [Melting],
  d: [Freezing],
)
#multiple-choice(
  14,
  [In a fair test, what should be changed on purpose?],
  a: [The controlled variable],
  b: [The independent variable],
  c: [All variables],
  d: [No variables],
)
#multiple-choice(
  15,
  [Why should people avoid dumping garbage in gullies and rivers?],
  a: [It makes the water colder.],
  b: [It can cause pollution and flooding.],
  c: [It makes fish grow faster.],
  d: [It increases rainfall.],
)
