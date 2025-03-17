#import "../config.typ":template, exercise, proof, sol

#show: template.with(title: "Tarea 4")

Ejercicios del _Limaye_
#exercise[5.2][
  Sea $X = KK^3$. Para $x = (x_1, x_2, x_3) in X$, sea $ norm(x) = [(abs(x_1)^2 + abs(x_2))^(2/3) + abs(x_3)^3]^(1/3). $
  Entonces $ norm(dot)$ es una norma en $KK^3$
]

#exercise[5.3][
  Sea $p in [1, infinity]$. Para las normas $norm(space)_p$ sobre $bold(K)$ introducidas en tenemos que $ lim_(p-> infinity) norm(x)_p = norm(x)_infinity, $
  para todo $x in bold(K)^n$,
  $ {x in bold(K)^n : norm(x)_p <1} subset {x in bold(K)^n: norm(x)_r < 1}, $
  para todo $1 <= p <r <= infinity$, y
  $ union.big_(1<= p < infinity) {x in bold(K)^n : norm(x)_p <1} = {x in bold(K)^n : norm(x)_infinity < 1}. $
]
#exercise[5.4][
  Sean $norm(space)_1, dots, norm(space)_m$ normas en un e.v. Sean $r_1, dots, r_m$ numeros reales positivos y $1<= p <= infinity$.
  Para $x in X$, sea
  $ norm(x) = cases(
    (r_1norm(x)_1^p+ dots.c+r_m norm(x)_m^p)^(1/p) ", si" 1<=p<infinity,
    max{r_1norm(space)_1, dots, r_m norm(space)_m} ", si" p=infinity

  ,

  ) $
  Entonces $norm(space)$ es una norma en $X$, y $norm(x_n -x) -> 0$ ssi $norm(x_n - x)_j -> 0$ para todo $j=1, dots, m$.
]
#proof[
  Separemos la prueba por casos. Si $p in [1, infinity)$ notemos que
  $ norm(x) = 0 <=> (r_1norm(x)_1^p+ dots.c+r_m norm(x)_m^p)^(1/p) = 0 <=> r_1norm(x)_1^p+ dots.c+r_m norm(x)_m^p = 0, $
  como cada sumando es no negativo tenemos, lo anterior pasa ssi $r_i norm(x)_i^p = 0$ para todo $i=1, dots, m$

  La homogeneidad se sigue de que cada $norm(space)_i$ es homogénea

  Para la desigualdad del triangulo podemos ver que
]
#exercise[5.5][
  Sea $X$ un e.l y $E$ un subconjunto de $X$ que es convexo, balanceado (esto es, $k x in E$ siempre que $x in E$ y $k in bold(K)$ t.q $abs(k)<=1$),
  absorbente (es decir, para todo $x in X$, existe $r>0$ t.q $x/r in E$) y el cual no contiene ningún espacio no cero de $X$.
  Para $x in X$, sea
  $ norm(x) = inf{r>0: x/r in E}. $
  Entonces $norm(space)$ es una norma sobre $X$, llamado el *gauge de Minkowski* sobre $E$. Más aún $
    {x in X: norm(x) <1} subset E subset {x in X : norm(x) <=1}.
  $
  En particular, si $Gamma$ es una curva cerrada simple en $RR^2$ que encierra a un conjunto convexo $E$ tal que $(0, 0) in E$ y $(-x_1, -x_2) in Gamma$ siempre
  que $(x_1, x_2) in Gamma$ entonces $norm(space)$ es una norma sobre $RR^2$ tal que ${(x_1, x_2) in RR^2: norm((x_1, x_2)) =1}$ coincide
  con $Gamma$.
]
#exercise[5.6][
  Sea $norm(space)_j$ una norma sobre un e.l $X_n$ para $n=1, 2, dots$. Considera $X = {(x_n)_n : x_n in X_n, sum_(n=1)^infinity norm(x_n)_n^p < infinity, "si" 1<= p < infinity "y" sup_(n in NN){norm(x_n)_n} < infinity "si" p = infinity }$.
  Entonces $X$ es un e.l y para $x = (x_n) in X$,
  $ norm(x) = cases(
    (sum_(n=1)^infinity norm(x_n)_n^p)^(1/p) ", si " 1<=p<infinity,
    sup_(n in NN){norm(x_n)_n} ", si" p = infinity.,

  ) $
  define una norma sobre $X$.
]