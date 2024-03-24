#let q5 = [
5. If $n in NN$ and $w = a_1...a_n$ is a string, for each $i in [n − 1] union {0}$, the string $a_1...a_i$ is called a _proper prefix_ of $w$. For any language $L$, we define

  $ mono("MIN")(L) := {w in L | "no proper prefix of" w "belongs to" L}. $

  Prove that if $L$ is regular, then $mono("MIN")(L)$ is regular as well.
    == Proof
    Let L is regular, L can be described by a DFA M = (Q, Sigma, delta, q0, F). 

    MIN(L) mean a route that pass through that DFA M, 
    and no pass other accept state before reach the final state.

    That is, MIN(L) is a DFA that is the same as M, 
    except that the every accept states is final state.

    So, MIN(L) is regular.


]
#q5
