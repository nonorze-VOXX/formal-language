#import "@preview/finite:0.3.0": automaton, layout


#let q1 = [
1. (Fun with `DFA`) For each of the following languages, construct a `DFA` that accepts the language. In all cases, the alphabet is {0, 1}.

  1. ${w | |w| equiv 0 mod 3}$.
  // #automaton(
  //   (
  //     q0: (q1:"0,1"),
  //     q1: (q2:"0,1"),
  //     q2: (q0:"0,1"),
  //   ),
  //   labels: (
  //     q0: $ q_0 $,
  //     q1: $ q_1 $,
  //     q2: $ q_2 $
  //   ),
  //   final: ("q0"),
  //   style: (
  //     state: (
  //       stroke: 0.5pt,
  //     ),
  //     transition: (
  //       stroke: 0.5pt,
  //       curve: 0,
  //       label: (
  //         angle: 0deg
  //       )
  //     ),
  //     q2-q0: (curve: 1.0)
  //   ),
  // )
    = todo

  2. ${w | 110 "is not a substring of" w}$.
    = TODO

  3. ${w | "every odd position in" w "is 1"}$.
    = TODO
  4. ${w | w "contains at least two 1s and at most two 0s"}$.
    = TODO
  5. ${epsilon.alt, 0}$.
    = TODO
 ]

#q1