#import "@preview/finite:0.3.0": automaton, layout


#let q1 = [
1. (Fun with `DFA`) For each of the following languages, construct a `DFA` that accepts the language. In all cases, the alphabet is {0, 1}.

  1. ${w | |w| equiv 0 mod 3}$.
  #automaton(
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $
    ),
    (
      q0: (q1: "0,1"),
      q1: (q2: "0,1"),
      q2: (q0: "0,1"),
    ),
    final: ("q0"),
  )
  2. ${w | 110 "is not a substring of" w}$.
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
        q3: $ q_3 $
      ),
      (
        q0: (q0: "0", q1: "1"),
        q1: (q0: "0", q2: "1"),
        q2: (q3: "0", q2: "1"),
        q3: (q3: "0,1"),
      ),
      final: ("q0", "q1", "q2"),
    )

  3. ${w | "every odd position in" w "is 1"}$.

    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
      ),
      (
        q0: (q1: "0,1"),
        q1: (q2: "0", q0: "1"),
        q2: ( q2: "0,1"),
      ),
      final: ("q0", "q1", ),
    )
  4. ${w | w "contains at least two 1s and at most two 0s"}$.
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
        q3: $ q_3 $,
        q4: $ q_4 $,
        q5: $ q_5 $,
        q6: $ q_6 $,
        q7: $ q_7 $,
        q8: $ q_8 $,
        q9: $ q_9 $,
      ),
      (
        q0: (q1: "0", q3: "1"),
        q1: (q2: "0", q4: "1"),
        q2: (q9: "0", q5: "1"),
        q3: (q4: "0", q6: "1"),
        q4: (q5: "0", q7: "1"),
        q5: (q9: "0", q8: "1"),
        q6: (q7: "0", q6: "1"),
        q7: (q8: "0", q7: "1"),
        q8: (q9: "0", q8: "1"),
        q9: (q9: "1,0"),
      ),
      final: ("q6", "q7", "q8"),
      style:(
        transition:(
          curve:0,
        )
      ),
      layout: layout.custom.with(
        positions: (..) => (
          q0: (0, 0),
          q1: (3, 0),
          q2: (6, 0),
          q3: (0, 3),
          q4: (3, 3),
          q5: (6, 3),
          q6: (0, 6),
          q7: (3, 6),
          q8: (6, 6),
          q9: (9, 3),
        )
      )
    )
  5. ${epsilon.alt, 0}$.
    = TODO
 ]

#q1