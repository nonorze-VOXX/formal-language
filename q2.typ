#import "@preview/finite:0.3.0": automaton, layout

#let q2 = [
2. Convert the `DFA`s to a `regex`: 
  #automaton(
    (
      q0: (q0:"a", q1:"b"),
      q1: (q1:"b", q2:"a"),
      q2: (q0:"b", q2:"a")
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
      q2-q2: (anchor: left)
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q0: (0, 3),
        q1: (3, 3),
        q2: (3, 0),
      )
    )
  )
  1. $a^ast (b^+ a^+ b)^ast a^ast$

  #automaton(
    (
      q0: (q1:"a,b"),
      q1: (q1:"a", q2:"b"),
      q2: (q0:"a", q1:"b")
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $
    ),
    final: ("q0", "q2"),
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
      q1-q2: (curve: 0.5),
      q2-q1: (curve: 0.5)
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q0: (0, 3),
        q1: (3, 3),
        q2: (3, 0),
      )
    )
  )
  2.  $q_0 = ((a union b)(a union bb)^* b a)^* $

    $q_2 = ((a union b)(a union bb)^* b a)^* (a union b)(a union bb)^* b$

  = TODO
]
#q2