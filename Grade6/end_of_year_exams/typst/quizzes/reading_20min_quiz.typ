#import "../main.typ": (
  blank-line, choice, match-table, question, quiz, section, short-answer, short-answer-lines, true-false,
)
#show: quiz.with(
  subject: "Reading",
  subtitle: "Reading Skills Quiz — 15 marks",
  instructions: [Read the passage carefully, then answer all questions. Write clearly in the spaces provided.],
)

#section[Read the Passage]
#block(fill: rgb("fff8e8"), stroke: rgb("c28a00"), radius: 5pt, inset: 7pt)[
  Every Saturday morning, Maya and her brother Andre walked with their aunt to a small community garden near Porus. At first, Maya thought the garden looked ordinary, but Aunt Sonia told them that it was once an empty lot filled with old bottles and dry bush. Now, neat rows of callaloo, tomatoes, pak choi, and peppers grew beside a rain barrel.

  One morning, the sky was cloudy and the air felt cool. Andre wanted to rush home before the rain started, but Aunt Sonia pointed to the dark soil. "The seedlings are thirsty," she said. "A little rain would be a blessing today."

  Maya noticed a group of younger children standing near the gate. They looked hesitant, holding their small packets of seeds tightly. Maya remembered how nervous she had felt on her first day in the garden. She smiled and said, "Come, I will show you where to plant them."

  By midday, the clouds had passed without heavy rain. The children had planted their seeds, labelled the rows, and watered the soil. Aunt Sonia nodded proudly. "A garden grows best when many hands care for it," she said. Maya looked at the tiny seedlings and imagined them becoming healthy vegetables for families in the community.
]

#section[Part A: Multiple Choice — 4 marks]
#question(1, [What is the best title for the passage?])[
  #choice[A][A Rainy School Day]
  #choice[B][The Community Garden]
  #choice[C][A Trip to Kingston]
  #choice[D][Andre's New Bicycle]
]
#question(2, [The word "seedlings" refers to])[
  #choice[A][young plants]
  #choice[B][large stones]
  #choice[C][full baskets]
  #choice[D][garden tools]
]
#question(3, [What can you infer about the younger children?])[
  #choice[A][They were confident gardeners.]
  #choice[B][They were unsure of what to do.]
  #choice[C][They wanted to leave forever.]
  #choice[D][They were angry.]
]
#question(4, [What is the main idea of the passage?])[
  #choice[A][Rain always falls on Saturdays.]
  #choice[B][People can work together to care for a garden.]
  #choice[C][Children should never plant seeds.]
  #choice[D][Vegetables grow without help.]
]

#section[Part B: Fill in the Blanks — 3 marks]
Use words from the passage to complete each sentence.
#short-answer(5, [The garden was near], line-width: 1.2in)
#short-answer(6, [The children planted their], line-width: 1.2in)
#short-answer(7, [Aunt Sonia said the seedlings were], line-width: 1.2in)

#section[Part C: True or False — 3 marks]
Write *T* for true or *F* for false in the box.
#true-false(8, [The garden was once an empty lot with old bottles and dry bush.])
#true-false(9, [Andre wanted to stay in the garden because heavy rain was falling.])
#true-false(10, [Maya helped the younger children because she remembered feeling nervous before.])

#section[Part D: Matching — 3 marks]

Match each reading skill to the correct answer. Write A, B, or C in the blank.

#match-table(
  (
    [Prediction],
    [Character Trait],
    [Evidence],
  ),
  (
    [A. Maya is helpful because she shows the children where to plant.],
    [B. The seedlings may grow into vegetables for the community.],
    [C. "She smiled and said, 'Come, I will show you where to plant them.'"],
  ),
)

#section[Part E: Short Response — 2 marks]
#short-answer-lines(
  14,
  [What lesson does the passage teach about helping a community? Write 2 to 3 sentences and use one detail from the passage.],
  lines: 3,
  line-width: 100%,
)

#v(2.5em)
#block(fill: rgb("eef6ff"), stroke: rgb("2f5597"), radius: 5pt, inset: 5pt)[
  *Total: 15 marks.* Skills checked: context clues, inference, prediction, main idea, sequencing, matching, true/false, details, evidence, and theme.
]
