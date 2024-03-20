# 2
## a

| |a|b|
|-|-|-|
|$q_0$|$q_0$|$q_1$|
|$ q_1$|$q_2$|$q_1$|
|$ q_2$|$q_2$|$q_0$|

$$
q_0=q_0a+q_2b+\epsilon\\
q_1=q_0b+q_1b\\
q_2=q_1a+q_2a\\
$$
$$
q_0=(q_2b+\epsilon )a^*\\
q_1=q_0b^*\\
q_2=q_1a^*
$$

$$
q_0
=(q_2b+\epsilon )a^* \\
=(q_1a^*b+\epsilon )a^* \\
=(q_0b^*a^*b+\epsilon )a^* \\
=q_0b^*a^*ba^*+\epsilon a^* \\
= a^* + q_0b^*a^*ba^*\\
= a^*(b^*a^*ba^*)^*\\

$$

$$
accept: q_0 = a^*(b^*a^*ba^*)^*\\
$$
## b
| |a|b|
|-|-|-|
|$q_0$|$q_1$|$q_1$|
|$ q_1$|$q_1$|$q_2$|
|$ q_2$|$q_0$|$q_1$|

$$
\begin{align*}
q_0 &= \epsilon +q_2a\\
q_1 &= q_0(a+b) +q_1a+q_2b\\
q_2 &= q_1b
\end{align*}
$$
$$
\begin{align*}
q_1 &= q_0(a+b) +q_1a+q_2b\\
 &= q_0(a+b) +q_1a+q_1bb\\
 &= q_0(a+b) +q_1(a+bb)\\
 &= q_0(a+b)(a+bb)^*\\
q_2 &= q_0(a+b)(a+bb)^*b \\
q_0&= \epsilon + q_0(a+b)(a+bb)^*ba \\
&= \epsilon ((a+b)(a+bb)^*ba)^* \\
&= ((a+b)(a+bb)^*ba)^* \\
q_1 &= ((a+b)(a+bb)^*ba)^*(a+b)(a+bb)^*\\
q_2&= ((a+b)(a+bb)^*ba)^*(a+b)(a+bb)^*b\\
\end{align*}
$$
$$
accept:

\begin{align*}
q_0 &= ((a+b)(a+bb)^*ba)^* \\
q_2&= ((a+b)(a+bb)^*ba)^*(a+b)(a+bb)^*b\\
\end{align*}

$$