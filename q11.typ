#let q11 = [
11. (Bonus) (Morphisms between `NFA`s) In this problem we assume that we are considering `NFA`s without $epsilon.alt$-transitions.

  Given two `NFA`s $N_i = (Q_i, Sigma, delta_i, q_(0i), F_i)$, $i = 1, 2$, we say that a relation $phi subset.eq Q_1 times Q_2$ is a _simulation_ of $N_1$ by $N_2$, denoted by $phi : N_1 -> N_2$, if the following properties hold:

    - $(q_(01), q_(02)) in phi$.
    - Whenever $(p, q) in phi$, for every $r in delta_1(p, a)$, there is some $s in delta_2(q, a)$ so that $(r, s) in phi$, for all $a in Sigma$.
    - Whenever $(p, q) in phi$, if $p in F_1$ then $q in F_2$.

  1. If $N_1$ and $N_2$ are actually `DFA`s, show that an $F$-map $phi : N_1 -> N_2$ of `DFA`s is a simulation of $N_1$ by $N_2$.

  2. Let $phi : N_1 -> N_2$ be a simulation of $N_1$ by $N_2$. Prove that for every $w in Sigma^ast$, for every $q_1 in hat(delta)_q (q_(01), w)$, there is some $q_2 in hat(delta)_2(q_(02), w)$ so that $(q_1, q_2) in phi$.


  3. Conclude that $L(N_1) subset.eq L(N_2)$.


  + If $N_1$ is an `NFA` and $N_2$ is a `DFA`, prove that if $L(N_1) subset.eq L(N_2)$, then there is some simulation $phi : N_1 -> N_2$ of $N_1$ by $N_2$. Hint. Consider the relation $phi = {(q_1, q_2) | q_1 in hat(delta)_1(q_(01), w), q_2 = hat(delta)_2(q_(02), w), w in Sigma^ast}$.


  + Give a counter-example showing that (c) is generally _false_ for `NFA`s, i.e., if $N_1$ and $N_2$ are both `NFA`s and $L(N_1) subset.eq L(N_2)$, there may not be any simulation $phi : N_1 -> N_2$.



  6. Prove that $L(N_1) subset.eq L(N_2)$ iff there is some _g_-simulation $phi : N_1 -> N_2$.

  + We say that $phi : N_1 -> N_2$ is a _g-bisimulation_ between $N_1$ and $N_2$ if $phi$ is a _g_-simulation between $N_1$ and $N_2$ and $phi^(−1)$ is a _g_-simulation between $N_2$ and $N_1$ (recall that $phi^(−1) = {(q, p) in Q_2 times Q_1 | (p, q) in phi}$).

  + Prove that $L(N_1) = L(N_2)$ iff there is some _g_-bisimulation between $N_1$ and $N_2$.
]

#q11