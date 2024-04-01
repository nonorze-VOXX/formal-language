#let q7 = [
7. Which of the following languages are regular? Justify each answer.

  + $L = {w c w | w in {a, b}^ast}$.

    == Proof
    Suppose $L$ is regular. Let $p>=1$ be the pumping length given by pumping lemma.

    Consider $w=a^p in L$. $|w c w| = p+1+p >= p$. 
    By the pumping lemma, there is a partition $w c w=x y z$ 
    such that $x y^j z in L$ for $j >= 0$

    By lemma, $|x y| <= p$ and $|y| >= 0$, i.e., 
    $underbrace(a^i, "x")underbrace(a^(p-i), "y")underbrace(c a^p, "z")$

    $because i != p$

    $therefore a^i!= a^p$

    $therefore x y^0 z = x z = a^i c a^p  in.not L$
    == Corollary
      $L = {w c w | w in {a, b}^ast}$. is not regular.
    
  + $L = {x y | x, y in {a, b}^ast "and" |x| = |y|}$.
    == Proof
    Suppose $L$ is regular. Let $p>=1$ be the pumping length given by pumping lemma.

    Consider $x=a^p in L$ and $y=b^p in L$. $|x y| = 2p >= p$. 
    By the pumping lemma, there is a partition $x y = m n o$ 
    such that $m n^j o in L$ for $j >= 0$

    By lemma, $|m n| <= p$ and $|n| >= 0$, i.e., 
    $underbrace(a^i, "m")underbrace(a^( p-i ), "n")underbrace(b^p, "o")$

    $because i != p$

    $therefore x y^0 z = x z = a^i b^p  in.not L$
    == Corollary
      $L = {x y | x, y in {a, b}^ast "and" |x| = |y|}$ is not regular

  + $L = {a^n | n "is a prime number"}$.
    == Proof
    Suppose $L$ is regular. Let $p>=1$ be the pumping length given by pumping lemma.

    Consider $a^p in L$. $|a^p| = p >= p$. By the pumping lemma, there is a partition $a^p = x y z$

    By lemma, $|x y| <= p$ and $|y| >= 0$, i.e.,
    $underbrace(a^i, "x")underbrace(a, "y")underbrace(a^(p-i-1), "z")$

    $because p in $prime number

    $therefore p-1 = 2^k k>1 in.not$ prime number

    $therefore |x y^0 z| = |x z| = |a^i a^(p-i-1)| = |a^(p-1)| in.not$ prime number

    $therefore x y^0 z = x z = a^i a^(p-i-1) = a^(p-1) in.not$ L

    == Corollary
      $L = {a^n | n "is a prime number"}$. is not regular
  + $L = {a^m b^n | gcd(m, n) = 17}$.
    == Proof
    Suppose $L$ is regular. Let $p>=1$ be the pumping length given by pumping lemma.


    Consider $a^p b^n in L$. $|a^p b^n| = p+n >= p$. By the pumping lemma, there is a partition $a^p b^n = x y z$

    By lemma, $|x y| <= p$ and $|y| >= 0$, i.e.,
    $underbrace(a^(p-1), "x")underbrace(a, "y")underbrace(b^n, "z")$

    $because gcd(p, n) = 17$

    $therefore gcd(p-1, n) != 17$

    $therefore x y^0 z = x z = a^(p-1) b^n in.not$ L


    == Corollary
      $L = {a^m b^n | gcd(m, n) = 17}$ is not regular



    

]
#q7
