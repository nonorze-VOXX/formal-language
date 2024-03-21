#import "@preview/finite:0.3.0": automaton, layout

#let q1 = [
1. (Fun with `DFA`) For each of the following languages, construct a `DFA` that accepts the language. In all cases, the alphabet is {0, 1}.

  1. ${w | |w| equiv 0 mod 3}$.
  #automaton(
    (
      q0: (q1:"0,1"),
      q1: (q2:"0,1"),
      q2: (q0:"0,1"),
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $
    ),
    final: ("q0"),
    style: (
      state: (
        stroke: 0.5pt,
      ),
      transition: (
        stroke: 0.5pt,
        curve: 0,
        label: (
          angle: 0deg
        )
      ),
      q2-q0: (curve: 1.0)
    ),
  )

  2. ${w | 110 "is not a substring of" w}$.
  #automaton(
    (
      q0: (q0:"0", q1:"1"),
      q1: (q0:"0", q2:"1"),
      q2: (q0:"0", q3:"1"),
      q3: (q3:"0,1"),
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $,
      q3: $ q_3 $,
    ),
    final: ("q0","q1","q2"),
    style: (
      state: (
        stroke: 0.5pt,
      ),
      transition: (
        stroke: 0.5pt,
        curve: 0,
        label: (
          angle: 0deg
        )
      ),
      q1-q0: (curve: 0.5),
      q2-q0: (curve: 1.5)
    ),
  )

  3. ${w | "every odd position in" w "is 1"}$.
  #automaton(
    (
      q0: (q1:"1", q2:"0"),
      q1: (q0:"0,1"),
      q2: (q2:"0,1")
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $
    ),
    final: ("q0", "q1"),
    style: (
      state: (
        stroke: 0.5pt,
      ),
      transition: (
        stroke: 0.5pt,
        curve: 0,
        label: (
          angle: 0deg
        )
      ),
      q1-q0: (curve: 0.5),
      q2-q2: (anchor: left)
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q0: (0, 3),
        q1: (3, 3),
        q2: (0, 0),
      )
    )
  )

  4. ${w | w "contains at least two 1s and at most two 0s"}$.
  #automaton(
    (
      q0: (q1: 1, q3: 0), q1: (q2: 1, q4: 0), q2: (q2: 1, q5: 0),
      q3: (q4: 1, q6: 0), q4: (q5: 1, q7: 0), q5: (q5: 1, q8: 0),
      q6: (q7: 1, q9: 0), q7: (q8: 1, q9: 0), q8: (q8: 1, q9: 0),
      q9: (q9: "0,1")
    ),
    labels: (
      q0: $ q_(00) $, q1: $ q_(01) $, q2: $ q_(02) $,
      q3: $ q_(10) $, q4: $ q_(11) $, q5: $ q_(12) $,
      q6: $ q_(20) $, q7: $ q_(21) $, q8: $ q_(22) $,
      q9: $ q_n $
    ),
    final: ("q2", "q5", "q8"),
    style: (
      state: (
        stroke: 0.5pt,
      ),
      transition: (
        stroke: 0.5pt,
        curve: 0,
        label: (
          angle: 0deg
        )
      ),
      q2-q2: (anchor: right),
      q5-q5: (anchor: right),
      q8-q8: (anchor: right),
      q9-q9: (anchor: left),
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q0: (0, 4),
        q1: (2, 4),
        q2: (4, 4),
        q3: (0, 2),
        q4: (2, 2),
        q5: (4, 2),
        q6: (0, 0),
        q7: (2, 0),
        q8: (4, 0),
        q9: (2, -2)
      )
    )
  )

  5. ${epsilon.alt, 0}$.
  #automaton(
    (
      q0: (q0: 0, q1: 1),
      q1: (q1: "0,1")
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
    ),
    final: ("q0"),
    style: (
      state: (
        stroke: 0.5pt,
      ),
      transition: (
        stroke: 0.5pt,
        curve: 0,
        label: (
          angle: 0deg
        )
      ),
    ),
  )
]
