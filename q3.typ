#import "@preview/finite:0.3.0": automaton, layout

#let q3 = [
3. (Fun with `NFA`) For each of the following languages, construct an `NFA`, with the specified number of states, that accepts the language. In all cases, the alphabet is ${0, 1}$.

  1. ${w | w "ends with 10"}$ with 3 states.
  #automaton(
    (
      q0: (q1:"1"),
      q1: (q2:"0"),
      q2: (q0:"0", q1:"1"),
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $
    ),
    final: ("q2"),
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
      q2-q1: (curve: 0.5),
      q2-q0: (curve: 1.3)
    ),
  )

  2. ${w | w "contains the substring 1011"}$ with 5 states.
  #automaton(
    (
      q0: (q1:"1"),
      q1: (q2:"0"),
      q2: (q0:"0", q3:"1"),
      q3: (q2:"0", q4:"1"),
      q4: (),
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $,
      q3: $ q_3 $,
      q4: $ q_4 $,
    ),
    final: ("q4"),
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
      q3-q2: (curve: 0.7),
      q2-q0: (curve: 1.0)
    ),
  )


  3. ${w | w "contains an odd number of 1s or exactly two 0s"}$.
  #automaton(
    (
      q: (q00:"2", q10:"2"),
      q00: (q01:"1"),
      q01: (q00:"1"),
      q10: (q11:"0"),
      q11: (q12:"0"),
      q12: (q13:"0"),
      q13: (),
    ),
    labels: (
      q: $ q $,
      q00: $ q_(00) $,
      q01: $ q_(01) $,
      q10: $ q_(10) $,
      q11: $ q_(11) $,
      q12: $ q_(12) $,
      q13: $ q_(13) $,
    ),
    final: ("q01", "q12"),
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
      q-q00: (label: (text: $epsilon.alt$)),
      q-q10: (label: (text: $epsilon.alt$)),
      q00-q01: (curve: 0.5),
      q01-q00: (curve: 0.5),
      q10-q10: (anchor: bottom),
      q11-q11: (anchor: bottom),
      q12-q12: (anchor: bottom),
      q13-q13: (anchor: bottom),
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q: (0, 1),
        q00: (2, 2),
        q01: (4, 2),
        q10: (2, 0),
        q11: (4, 0),
        q12: (6, 0),
        q13: (8, 0),
      )
    )
  )

  4. ${w | w "begins with 1 or ends with 0"}$ with whatever number of states you like.
  #automaton(
    (
      q: (q00:"2", q10:"2"),
      q00: (q01:"1"),
      q01: (),
      q10: (q11:"0"),
      q11: (q10:"1"),
    ),
    labels: (
      q: $ q $,
      q00: $ q_(00) $,
      q01: $ q_(01) $,
      q02: $ q_(02) $,
      q10: $ q_(10) $,
      q11: $ q_(11) $,
    ),
    final: ("q01", "q11"),
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
      q10-q11: (curve: 0.5),
      q11-q10: (curve: 0.5),
      q-q00: (label: (text: $epsilon.alt$)),
      q-q10: (label: (text: $epsilon.alt$)),
      q01-q01: (anchor: right),
      q02-q02: (anchor: right),
      q10-q10: (anchor: bottom),
      q11-q11: (anchor: bottom),
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q: (0, 1),
        q00: (2, 2),
        q01: (4, 2),
        q10: (2, 0),
        q11: (4, 0),
      )
    )
  )

  5. ${11, 111}^ast$ with whatever number of states you like.
  #automaton(
    (
      q: (q00:"2", q10:"2"),
      q00: (q01:"1"),
      q01: (q02:"1"),
      q02: (q:"2"),
      q10: (q11:"1"),
      q11: (q12:"1"),
      q12: (q13:"1"),
      q13: (q:"2"),
    ),
    labels: (
      q: $ q $,
      q00: $ q_(00) $,
      q01: $ q_(01) $,
      q02: $ q_(02) $,
      q10: $ q_(10) $,
      q11: $ q_(11) $,
      q12: $ q_(12) $,
      q13: $ q_(13) $,
    ),
    final: ("q02", "q13"),
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
      q-q00: (label: (text: $epsilon.alt$)),
      q-q10: (label: (text: $epsilon.alt$)),
      q02-q: (label: (text: $epsilon.alt$)),
      q13-q: (label: (text: $epsilon.alt$)),
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q: (5, 2),
        q00: (3, 4),
        q01: (5, 4),
        q02: (7, 4),
        q10: (2, 0),
        q11: (4, 0),
        q12: (6, 0),
        q13: (8, 0),
      )
    )
  )
]
