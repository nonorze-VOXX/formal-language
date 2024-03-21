#let q10 = [
10. Given two `DFA`s $M_i = (Q_i, Sigma, delta_i, q_(0i), F_i)$, $i = 1, 2$, a _morphism_ $h : M_1 -> M_2$ of `DFA`s is a function $h : Q_1 -> Q_2$ satisfying the following:

    - $h(delta_1(p, a)) = delta_2(h(p), a), "for all" p in Q_1 "and all" a in Sigma$.
    - $h(q_(01)) = q_(02)$.

  An $F$-map $h : M_1 -> M_2$ is a morphism $h$ satisfying $h(F_1) subset.eq F_2$.
  A $B$-map $h : M_1 -> M_2$ is a morphism $$ satisfying $h^(−1)(F_2) subset.eq F_1$.
  A _proper homomorphism_ of `DFA`s is an $F$-map and also a $B$-map, i.e. $h^(−1)(F_2) = F_1$.

  + Prove that if $f : M_1 -> M_2$ and $g : M_2 -> M_3$ are morphisms (resp. $F$-maps, resp. $B$-maps) of `DFA`s, then $g compose f : M_1 -> M_3$ is also a morphism (resp. $F$-map, resp. $B$-map).

  + If $h : M_1 -> M_2$ is a morphism, prove that   
    $ h(hat(delta)_1(p, w) = hat(delta)_2(h(p), w)) $
    for all $p in Q_1$ and all $w in Sigma^ast$.

  + Prove that if $h : M_1 -> M_2$ is a proper homomorphism, then $L(M_1) = L(M_2)$.
]
