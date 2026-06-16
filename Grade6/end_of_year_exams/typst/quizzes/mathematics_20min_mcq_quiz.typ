#import "../main.typ": *
#show: quiz.with(subject: "Mathematics")

#section[Number, Operations, and Money]
#multiple-choice(
  1,
  [What is the value of 7,508 + 2,397?],
  a: [9,805],
  b: [9,905],
  c: [10,905],
  d: [8,905],
)
#multiple-choice(
  2,
  [A farmer in Clarendon harvested 36 mangoes. He packed them equally into 6 bags. How many mangoes were in each bag?],
  a: [5],
  b: [6],
  c: [7],
  d: [8],
)
#multiple-choice(
  3,
  [A shopkeeper sold a book for \$850 and a pen for \$125. How much did the customer spend altogether?],
  a: [\$725],
  b: [\$875],
  c: [\$975],
  d: [\$1,025],
)
#multiple-choice(
  4,
  [What is 0.6 written in words?],
  a: [six],
  b: [six tenths],
  c: [six hundredths],
  d: [sixty tens],
)
#multiple-choice(
  5,
  [A pencil costs \$45. How much will 4 pencils cost?],
  a: [\$90],
  b: [\$135],
  c: [\$180],
  d: [\$225],
)
#multiple-choice(
  6,
  [Which number is 25% of 80?],
  a: [10],
  b: [20],
  c: [25],
  d: [40],
)

#section[Measurement, Geometry, and Algebra]
#multiple-choice(
  7,
  [A class begins at 8:30 a.m. and ends at 10:00 a.m. How long is the class?],
  a: [30 minutes],
  b: [1 hour],
  c: [1 hour 30 minutes],
  d: [2 hours],
)
#multiple-choice(
  8,
  [The perimeter of a rectangle is 30 cm. Its length is 10 cm. What is its width?],
  a: [5 cm],
  b: [10 cm],
  c: [15 cm],
  d: [20 cm],
)
#multiple-choice(
  9,
  [Which shape has exactly 3 sides?],
  a: [Square],
  b: [Triangle],
  c: [Pentagon],
  d: [Hexagon],
)
#multiple-choice(
  10,
  [What is the next number in the pattern: 4, 8, 12, 16, blank?],
  a: [18],
  b: [20],
  c: [22],
  d: [24],
)
#multiple-choice(
  11,
  [If a number plus 9 equals 17, what is the number?],
  a: [6],
  b: [7],
  c: [8],
  d: [9],
)

#section[Data Handling and Probability]
#block(breakable: false)[
  #grid(columns: (1.5fr, 1fr), column-gutter: 0.2in, align: (center, top))[
    #figure(
      image("../../assets/math_fruit_bar_chart.svg", width: 5.0in),
      caption: [Favourite fruits],
    )
  ][
    #set text(size: 12pt)
    #table(
      columns: (1fr, 1fr),
      align: (left, center),
      inset: 4pt,
      table.header[*Fruit*][*Students*],
      [Mango], [8],
      [Banana], [5],
      [Orange], [7],
      [Pineapple], [4],
    )
  ]
]

#multiple-choice(
  12,
  [Which fruit was chosen by the greatest number of students?],
  a: [Mango],
  b: [Banana],
  c: [Orange],
  d: [Pineapple],
)
#multiple-choice(13, [How many more students chose mango than pineapple?], a: [2], b: [3], c: [4], d: [5])
#multiple-choice(
  14,
  [A bus has 48 passengers. At a stop, 15 passengers get off and 9 get on. How many passengers are now on the bus?],
  a: [24],
  b: [33],
  c: [42],
  d: [54],
)
#multiple-choice(
  15,
  [A spinner has 4 equal sections: red, blue, green, and yellow. Which colour is just as likely to be chosen as blue?],
  a: [Red],
  b: [Black],
  c: [White],
  d: [Brown],
)
