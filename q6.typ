#let q6 = [
6.
  + Given an alphabet $Sigma$, for any language $L subset.eq Sigma^ast$, prove that $L^(**) = L^*$ and $L^*L^* = L^*$.

    == Proof $L^*=L^*L^*$

    === proof $L^*L^* subset.eq L^*$
    let $w in L$, for any $L^*L^*$ can be described by 
    $(w_11 w_12 ... w_(1n))( w_21 w_22 ... w_(2m))$

    $(w_11 w_12 ... w_(1n))( w_21 w_22 ... w_(2m)) in L^*$

    thus $L^*L^* subset.eq L^*$

    === proof $L^* subset.eq L^*L^*$
    let $w in L$, for any $L^*$ can be described by
    $(w_1 w_2 ... w_n)$

    $(w_1 w_2 ... w_n) = epsilon.alt (w_1 w_2 ... w_n) in L^*L^*$

    thus $L^* subset.eq L^*L^*$

    === Corollary
    $L^*=L^*L^*$



    == Proof $L^(**) = L^*$
    $L^(**) = L^*L^*L^* ... L^*$

    $because L^*L^* = L^*$

    $therefore L^(**) = L^*$

  + Prove that every finite language is regular.

    Every finite language have finite number of strings,

    thus it can be recorded by finite state.

    therefore finite language can be described by DFA.

    Same,can be described by DFA means that finite language is regular.

  + Given an example of a non-regular language $A$ and a regular language $B$ such that $A subset.eq B$.

    $A=a^n b^n$

    $B=a^* b^*$

    $A subset.eq B$, B is regular, A is non-regular.

  + Given an example of a non-regular language $A$ and a regular language $B$ such that $B subset.eq A$.

    $A=a^n b^n$

    $B=a^2 b^2$

    $B subset.eq A$, B is regular, A is non-regular.

  5. Prove that $L^((1/3))$ is regular.

    $L^(1/3) = {w| w^3 in L}$

    Let $w$ =只有在DFA裡經過n次循環的word

    then $w^3$ =只有在DFA裡經過$3 dot n$次循環的word

    thus $w^3$ is also can be described by DFA

    therefore $L^(1/3)$ is regular.

  + What about $L^((3))$?

    == Bumping lemma
    let $w in L$
    Suppose $L$ is regular. Let $p>=1$ be the pumping length given by pumping lemma.

    Consider $w^3 in L$. $|w^3| = 3 >= p$. By the pumping lemma, there is a partition $w^p = x y z$

    By lemma, $|x y| <= p$ and $|y| >= 0$, i.e.,
    $underbrace(w^(1), "x")underbrace(w, "y")underbrace(w^(1), "z")$

    $x y^0 z$ = ww is not in $L^3$

    therefore $L^3$ is not regular.

  + Let $k in NN$. Prove that there are only finitely many languages of the form $L^((1/k))$ and that they are all regular.

    $L^(1/k) =  {w| w^k in L}$

    Let $w$ = 在DFA裡只有經過n次循環的word

    then $w^k$ =只有在DFA裡經過$k dot n$次循環的word

    thus $w^k$ is also can be described by DFA

    therefore $L^(1/k)$ is regular.


  + Is $L^(1/oo)$ regular or not?

    $L^(1/oo) =  {w| w^k in L$ for all $k >=1} $

    let a NFA is have a cycle that can be repeated infinite times
     and $w$ is accepted by this NFA, then $w^k$ is also accepted by NFA

    thus $L^(1/oo)$ is regular.


  + Is $sqrt(L)$ regular of not?
  
    $sqrt(L) = {w^k in L $ for some $ k >=1}$

    let a NFA is have a cycle that can be repeated infinite times
     and $w$ is accepted by this NFA, then $w^k$ is also accepted by NFA

    thus $sqrt(L)$ is regular.

  + What about $L^oo$?

    == Bumping lemma
    let $w in L$
    Suppose $L$ is regular. Let $p>=1$ be the pumping length given by pumping lemma.

    Consider $w^p in L$. $|w^p| = p >= p$. By the pumping lemma, there is a partition $w^p = x y z$

    By lemma, $|x y| <= p$ and $|y| >= 0$, i.e.,
    $underbrace(w^(i), "x")underbrace(w, "y")underbrace(w^(p-1-i), "z")$

    $x y^0 z$ = ww is not in $L^p$

    therefore $L^p$ is not regular.
    
]

#q6