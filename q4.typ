#import "@preview/finite:0.3.0": automaton, layout

#let q4 = [
4. (Fun with regex) Give regular expressions describing the following languages. In all cases, the alphabet is ${0, 1}$.

  + ${w | w "contains with at least three 1s"}$.
  
    $Sigma^* 1 Sigma^* 1 Sigma^* 1 Sigma^*$

  + ${w | w "contains exactly two 0s and at least two 1s"}$.
  
    $(001 union 100 union 010)1^) union
    ((101 union 011 union 11^+0)1^*01^*  $

  + ${w | "every odd position in" w "is 1"}$.
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
      ),
      (
        q0: (q1:"1", q2:"0"),
        q1: (q0:"1,0"),
        q2: (q2:"1,0")
      ),
      final: ("q0","q1"),
    )

    == init

    $q_0=q_1(0 union 1)union epsilon.alt$

    $q_1=q_0 1 $

    $q_2=q_0 0 union q_2(0 union 1) $

    == process

    $q_0=q_0 1(0 union 1)union epsilon.alt = (1(0 union 1))^*$
    
    == result

    accept: $q_0 union q_1 
    = q_0 union q_0 1 =(1(0 union 1))^*(epsilon.alt union 1)$

]
#q4