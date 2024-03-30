#import "@preview/finite:0.3.0": automaton, layout
#let q8 = [
8. Let $M = (Q, Sigma, delta, q_0, F)$ be a `DFA`. A state $q in Q$ is _reachable_ iff there is some string $w in Sigma^*$ such that $hat(delta)(q_0, w) = q$. Consider the following method for computing the set $Q_r subset.eq Q$ of reachable states: define the sequence of sets $Q^i_r subset.eq Q$ where

  $ Q^0_r &:= {q_0} \
    Q^(i+1)_r &:= {q in Q | exists p in Q^i_r, exists a in Sigma, q = delta(p, a)} $

  + Prove by induction on $i$ that $Q^i_r$ is the set of all reachable states from $q_0$ using paths of length $i$.

    $Q_r^1 $ = all q from $q_0$ can reach by 1 step

    $Q_r^2 $ = all q from $Q_r_1$ can reach by 1 step
    ,thus $Q_r^2$ = all q from $q_0$ can reach by 2 steps

    let $Q_r^(i+1)$ = all q from $q_r^i$ can reach by 1 steps
    ,thus $Q_r^(i+1)$ = all q from $q_0$ can reach by i+1 steps

    therefore $Q_r^i$ is the set of all reachable states 
    from $q_0$ using paths of length $i$.

    Q.E.D

  + Give an example of a `DFA` such that $Q^(i+1)_r != Q^i_r "for all" i >= 0$.

    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
      ),
      (
        q0: (q1: "0,1"),
        q1: (q0: "0,1"),
      ),
    )

  + Change the inductive definition of $Q^i_r$ as follows:

    $ Q^(i+1)_r := Q^i_r union {q in Q | exists p in Q^i_r, exists a in Sigma, q = delta(p, a)} $

    Prove that there exists an $i_0$ such that $Q^(i_0+1)_r = Q^(i_0)_r = Q_r$.

    let $i_0$ = state number of the DFA

    $Q_r^(i+1)$ = all q from $q_r^i$ can reach by 1 steps + all q from $q_r^i$

    $because$ $Q_r$ have $i_0$ states $and$ every state can reach to every other state

    thus, after every step,
     at least have 1 or more states will added to $Q_r^(i+1)$ then $Q_r^(i)$
    
    $therefore$ $Q_r^(i_0)$ will at least have $i_0$ states is the reach to all states

    $therefore$ $Q_r^(i_0+1)$ can't add more states than $Q_r^(i_0)$

    $therefore$ $Q_r^(i_0+1)$ = $Q_r^(i_0)$ = $Q_r$


  4. Explain why $M_r$ is indeed a `DFA`.

    every states in $M_r$ record a length from $q_0$,

    and $M$ is finite, thus $M_r$ is finite

    therefore $M_r$ is a `DFA`

  + Prove that $L(M_r) = L(M)$. A `DFA` is called _reachable_ or _trim_ if $M = M_r$.

    let $M$ is:
    #automaton(
      labels: (
        q0: $ q_0 $,
        q1: $ q_1 $,
        q2: $ q_2 $,
      ),
      (
        q0: (q1: "0", q2: "1"),
        q1: (q2: "0,1"),
        q2: (q0: "0,1"),
      ),
      final: ("q1"),
    )

    then  $q_1$ is reachable from $q_0$ by 1 step
    and  $q_2$ is reachable from $q_0$ by 1 steps

    but $q_2$ is not accept state,

    therefore $L(M_r) != L(M)$

]

#q8