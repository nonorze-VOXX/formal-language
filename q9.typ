#let q9 = [
9. Let $Sigma = {a_1,...,a_n}$ be an alphabet of $n$ symbols.

  + Construct an `NFA` with $2n + 1$ states accepting the set $L_n$ of strings over $Sigma$ such that, every string in $L_n$ has an odd number of $a_i$, for some $a_i in Sigma$. Equivalently, if $L^i_n$ is the set of strings over $Sigma$ with an odd number of $a_i$, then $L_n = L^1_n union...union L^n_n$.

    $q_0$ is the start state

    let $n>=i>=0$

    $q_(i 1)$ is the state that accept odd $a_i$

    $q_(i 2)$ is the state that accept evei $a_i$

    $q_0$ goes to $q_(i 1)$ oi $a_i$

    $q_(i 1)$ goes to $q_(i 2)$ oi $a_i$

    $q_(i 2)$ goes to $q_(i 1)$ oi $a_i$

    accept state is $union_{n>=i>=0}{q_(i 1)}$

  + Prove that there is a `DFA` with $2^n$ states accepting the language $L_n$.

    every alphabet $a_i$ has two states $q_(i 1)$ and $q_(i 2)$

    if want record the odd or even and every state need to $2^n$ states

  + Prove that every `DFA` accepting $L_n$ has at least $2^n$ states.

    every alphabet $a_i$ has two states $q_(i 1)$ and $q_(i 2)$

    if want record the odd or even and every state need to $2^n$ states
]

#q9