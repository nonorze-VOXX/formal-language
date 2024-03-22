#import "@preview/finite:0.3.0": automaton, layout

#let q3 = [
3. (Fun with `NFA`) For each of the following languages, construct an `NFA`, with the specified number of states, that accepts the language. In all cases, the alphabet is ${0, 1}$.

  1. ${w | w "ends with 10"}$ with 3 states.

    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
        q2-q0: $ Sigma $,
        q2-q2: $ Sigma $
      ),
      (
        q0: (q1: "1"),
        q1: (q2: "0"),
        q2: (q0: "",q2: ""),
      ),
      final: ("q2"),
    )
  2. ${w | w "contains the substring 1011"}$ with 5 states.
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
        q3: $ q_3 $,
        q4: $ q_4 $,
        q0-q0: $ Sigma $,
        q4-q4: $ Sigma $
      ),
      (
        q0: (q1: "1",q0:"q0-q0"),
        q1: (q2: "0"),
        q2: (q3: "1"),
        q3: (q4: "1"),
        q4:(q4:"q4-q4")
      ),
      final: ("q4"),
      style:(
        transition:(
          curve:0,
        ),
      ),
    )

  3. ${w | w "contains an odd number of 1s or exactly two 0s"}$.
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
        q3: $ q_3 $,
        q4: $ q_4 $,
        q5: $ q_5 $,
        q6: $ q_6 $,
        q0-q1:$epsilon.alt$,
        q0-q3:$epsilon.alt$,
        q6-q6:$Sigma$,
      ),
      (
        q0: (q1: "epsilon",q3: "epsilon.alt"),
        q1: (q2: "1"),
        q2: (q1: "1"),
        q3: (q4: "0"),
        q4:(q5:"0"),
        q5:(q6:"0"),
        q6:(q6:"sigma"),
      ),
      final: ("q2","q5"),
      style:(
        transition:(
          curve:0,
        ),
        q1-q2:(
          curve:0.5,
        ),
        q2-q1:(
          curve:0.5,
        )
      ),
      layout: layout.custom.with(
        positions: (..) => (
          q0: (0, 2),
          q1: (2, 0),
          q2: (4, 0),
          q3: (2, 3),
          q4: (4, 3),
          q5: (6, 3),
          q6: (8, 3),
        )
      )
    )
  4. ${w | w "begins with 1 or ends with 0"}$ with whatever number of states you like.
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
        q3: $ q_3 $,
        q4: $ q_4 $,
        q0-q0: $ Sigma $,
        q2-q2: $ Sigma $,
        q5-q5: $ Sigma $,
        q4-q5: $ Sigma $,
        q0-q1: $ epsilon.alt $,
        q0-q3: $ epsilon.alt $,
      ),
      (
        q0: (q1: "epsilon",q0:"sigma" ,q3:"epsilon"),
        q1: (q2: "1"),
        q2: (q2: "sigma"),
        q3: (q4: "0"),
        q4:(q5:"sigma"),
        q5:(q5:"sigma"),
      ),
      final: ("q4","q2"),
      style:(
        transition:(
          curve:0,
        ),
      ),
      layout: layout.custom.with(
        positions: (..) => (
          q0: (0, 2),
          q1: (2, 0),
          q2: (4, 0),
          q3: (2, 3),
          q4: (4, 3),
          q5: (6, 3),
        )
      )
    )
  5. ${11, 111}^ast$ with whatever number of states you like.
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
        q3: $ q_3 $,
        q0-q1:$epsilon.alt$,
      ),
      (
        q0: (q1:"epsilon"),
        q1: (q2: "1"),
        q2: (q3: "1"),
        q3: (q3: "1"),
      ),
      final: ("q3"),
      style:(
        transition:(
          curve:0,
        ),
      ),
    )
]
#q3
