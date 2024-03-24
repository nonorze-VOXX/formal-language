#let q6 = [
6.
  + Given an alphabet $Sigma$, for any language $L subset.eq Sigma^ast$, prove that $L^(**) = L^*$ and $L^*L^* = L^*$.

    == Proof

    === proof $L^*L^* subset.eq L^*$
    for any $L^*L^*$ can be described by 
    
    $L^*L^* = (w_11 w_12 ... w_(1n))( w_21 w_22 ... w_(2m))$

    $(w_11 w_12 ... w_(1n))( w_21 w_22 ... w_(2m)) in L^*$

    thus $L^*L^* subset.eq L^*$

    === proof $L^* subset.eq L^*L^*$
    for any $L^*$ can be described by

    $L^* = (w_1 w_2 ... w_n)$

    $(w_1 w_2 ... w_n) = epsilon.alt (w_1 w_2 ... w_n) in L^*L^*$

    thus $L^* subset.eq L^*L^*$

    === Corollary
    $L^*=L^*L^*$



    == Proof
    $L^(**) = L^*L^*L^* ... L^*$

    $because L^*L^* = L^*$

    $therefore L^(**) = L^*$

  + Prove that every finite language is regular.

    = todo
    // Every finite language can be accepted by a finite automata.

  + Given an example of a non-regular language $A$ and a regular language $B$ such that $A subset.eq B$.
    = todo


  + Given an example of a non-regular language $A$ and a regular language $B$ such that $B subset.eq A$.

    = todo

  5. Prove that $L^((1/3))$ is regular.

  + What about $L^((3))$?

  + Let $k in NN$. Prove that there are only finitely many languages of the form $L^((1/k))$ and that they are all regular.

  + Is $L^(1/oo)$ regular or not?

  + Is $sqrt(L)$ regular of not?

  + What about $L^oo$?
]

#q6