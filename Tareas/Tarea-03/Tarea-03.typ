#import "../config.typ": template, exercise, proof, sol

// math imports
#import "../config.typ": eps, cls

#show: doc => template([Tarea 3], doc)

#exercise[][
  Considera un e.n $(E, norm(dot))$. Denotemos por $(E^*, d^*)$ al e.m completado de $(E, d)$, donde $d$ es la métrica
  inducida en $E$ por $norm(dot)$. Demuestra que $E^*$ admite una estructura vectorial y que $norm(dot)$ se puede extender
  a una función $norm(dot): E^*times E^* -> [0, infinity)$ cumpliendo que $(E^*, norm(dot)^*)$ es un e.B y que $norm(dot)^*_(|_(E times E)) = norm(dot)$.
]
#proof[
  Sea $i:E -> E^*$ la isometria t.q $E$ es isometrico a $i(E)$ que es un subespacio denso de $E^*$. //en un abuso de notación denotaremos por $E$ es este subespacio de $E^*$.
  Dados $x^*, y^* in E^*$ existen sucesiones ${x_n}_n, {y_n}_n subset E$
  tales que $i(x_n)-> x^*$ y $i(y_n)->y^*$, como $E$ es un e.n tenemos que ${x_n + y_n}_n $ es una sucesión en $E$, más
  aún ${i(x_n + y_n)}_n$ es una sucesión de Cauchy pues $i$ es isometria por lo cual converge en $E^*$, asi podemos
  definir la suma en $E^*$ como:
  $ x^* + y^* := lim_(n-> infinity) i(x_n + y_n), $
  de manera similar dado un escalar $lambda$ tenemos que ${lambda x_n}_n$
  es una sucesión en $E$ y ademas ${i(lambda x_n)}_n$ es de Cauchy, pues $i$ es isometria, por lo cual converge y entonces
  podemos definir la multiplicación escalar como:
  $ lambda x^* = lim_(n->infinity) i(lambda x_n). $
  Notemos que tanto la suma como la multiplicación escalar están bien definidas pues

  Ademas podemos ver que la conmutatividad, asociatividad y distributividad en $E^*$ se cumplen por que se cumplen en $E$.

  Definamos ahora una norma en $E^*$, dado $x^* in E^*$ existe sucesión ${x_n}_n subset E$ tal que $i(x_n) -> x^*$,
  notemos que ${norm(x_n)}_n$
  es de Cauchy, pues ${i(x_n)}$ es de Cauchy e $i$ es isometria.

  Como $RR$ es completo se sigue que ${norm(x_n)}$ converge en $[0, infinity]$, pues la sucesión no es negativa. Asi pues,
  podemos definir la norma $norm(dot)^*$ en $E^*$ como
  $ norm(x^*) = lim_(n -> infinity) norm(x_n)$

  Veamos que efectivamente es una norma.
  - Si $norm(x^*) = 0$, entonces $lim_(n-> infinity) norm(x_n) =0$, para alguna sucesión ${x_n}_n subset E$. Notemos que
    $ d^*(x^*, i(0)) <= d^*(x^*, i(x_n)) + d^*(i(x_n), i(0)) $
    y obtenemos $d*(x^*, i(0)) = 0$, por lo cual $x^* = i(0)$.
  - Dado $lambda$ y $x^* in E^*$ tenemos que
    $ norm(lambda x^*) = lim_(n->infinity) norm(lambda x_n) = lim_(n->infinity) abs(lambda) norm(x_n) = abs(lambda)lim_(n->infinity)norm(x_n) = abs(lambda)norm(x^*) $
] 

#exercise[6C 7][
  Muestra que $cal(l)^1$ con la norma definida por $norm((a_1, a_2, dots)) = sum_(k=1)^infinity abs(a_k)$ es un e.B.
]
#proof[
  Veamos que $cal(l)^1$ es un e.v. Si $bold(x) = {x_n}_n, bold(y)={y_n}_n in cal(l)^1$ tenemos que, para $m>=n$ se cumple
  que $ sum_(i=1)^n abs(x_i + y_i) <= sum_(i=1)^n abs(x_i) + sum_(i=1)^n abs(y_i) <= sum_(i=1)^m abs(x_i) + sum_(i=1)^m abs(y_i), $
  al tomar el limite $m-> infinity$, vemos que para todo $n$ ,
  $ sum_(i=1)^n abs(x_i + y_i) <= sum_(i=1)^infinity abs(x_i) + sum_(i=1)^infinity abs(y_i), $
  por lo cual ${x_n + y_n}_n$ es acotada y no decreciente, por tanto converge, haciendo $n-> infinity$ tenemos que $bold(x) + bold(y) in cal(l)^1$,
  más aún, notemos que lo anterior muestra la desigualdad del tringulo para $norm(dot)$. De manera similar podemos ver $lambda bold(x) in cal(l)^1$ para
  todo escalar $lambda$.


  Primero veamos que $cal(l)^1$ es un e.v normado, para ellos veamos que $norm(dot)$ es una norma sobre $cal(l)^1$.
  - Veamos que $norm(dot)$ es *definida positiva*. Notemos que $norm((a_1, a_2, dots,)) = 0$ ssi $sum_(k=1)^infinity abs(a_k)$ lo
    cual pasa ssi $abs(a_k) = 0$ para todo $k in NN$, es decir, si $a_k =0$ para todo $k in NN$.
  - Notemos que dado $lambda in FF$,
    $ norm(lambda(a_1, a_2, dots)) &= norm((lambda a_1, lambda a_2, dots)) \ &= sum_(k=1)^infinity abs(lambda a_k) \ &= sum_(k=1)^infinity abs(lambda)(a_k) = abs(lambda)(sum_(k=1)^infinity abs(a_k)) = abs(lambda) norm((a_1, a_2, dots)). $
  -
  Ahora veamos que $cal(l)^1$ es completo.
]


#exercise[6C 10][
  Supongamos que $U$ es un subespacio de un e.v normado $V$ tal que una bola abierta de $V$ esta contenida en $U$. Prueba
  que $U = V$.
]
#proof[
  Es claro que $U subset V$, por lo cual veamos que $V subset U$. Notemos primero que podemos trasladar la bola al origen,
  pues si $B(x_0, r)$ es la bola de $V$ contenida en $U$, notemos que para todo $y in B(x_0, r)$ se cumple que
  $norm(y - x_0) <r$ ssi $y-x_0 in B(0, r)$, como $U$
  es subespacio tenemos que $y-x_0 in U$, para $y in U$, pues $x_0 in U$, por lo cual $B(0, r) subset U$. Entonces, sin
  perdida de generalidad podemos suponer que $B(0, r) in U$, luego, dado $x in V$ notemos que $r/2 x/norm(x) in B(0, r)$,
  se sigue que
  $ (2norm(x)/r)(r/2 x/norm(x)) = x in U, $
  pues $(2norm(x)/r)$ es un escalar, de lo anterior tenemos que $V subset U$ como queremos.
]

#exercise[6C 14][
  Supongamos que $U$ es un subespacio de un e.v normado $V$. Suponga ademas que $W$ es un e.B y $S:U->W$ es un b.l.m.
  + Prueba que existe una única función continua $T: cls(U)->W$ t.q $T|_U = S$.
  + Prueba que la función $T$ en es un b.l.m de $cls(U)$ hacia $W$ y $norm(T) = norm(S)$.
  + Da un ejemplo para ver que la puede fallar si la suposición que $W$ es un e.B es remplazada por la suposición que $W$ es
    un e.v normado.
]

+ #proof[Primero veamos la unicidad, si $T_1, T_2: cls(U) -> W$ tales que $T_1|_U = T_2|_U = S$ entonces como $U$ es denso en $cls(U)$
    tenemos que $T_1 = T_2$. Ahora mostraremos su existencia. Sea $u in cls(U)$, entonces existe ${u_n}_n subset U$ t.q $u_n -> u$,
    consideremos ${S(u_n)}_n subset W$ veamos es una sucesión de Cauchy en $W$. Como $S$ es un b.l.m tenemos que
    $ norm(S(u_n) - S(u_m))_W = norm(S(u_n - u_m))_W <= norm(S) norm(u_n - u_m)_U, $
    dado que ${u_n}_n$ es una sucesión de Cauchy tenemos que ${S(u_n)}_n$ también. El hecho que $W$ es un e.B tenemos que $S(u_n) -> w$,
    para algún $w in W$. De lo anterior podemos definir $T:cls(U)->W$, dada por
    $ T(u) = lim_(n-> infinity) S(u_n), $
    para $u_n -> u$. Es claro que $T$ es un m.l. Notemos que $T$ esta bien definida, pues $u_n -> u$ y $v_n -> u$, con $u in cls(U)$
    Ademas es claro que $T|_U =S$
  ]
+ #proof[

  ]
+ #sol[
    Consideremos el siguiente ejemplo:
  ]

#exercise[6C 15][
  Supongamos que $V$ es un e.v normado y $U$ es un subespacio de $V$. Define $norm(dot)$ sobre $V slash U$ por
  $ norm(f + U) = inf{norm(f+g): g in U}. $
  + Prueba que $norm(dot)$ es una norma sobre $V slash U$ ssi $U$ es un subespacio cerrado de $V$.
  + Prueba que si $V$ es un e.B y $U$ es un subespacio cerrado de $V$, entonces $V slash U$ (con la norma definida
    anteriormente) es un e.B.
  + Prueba que si $U$ es un e.B (con la norma que hereda de $V$) y $V slash U$ es un e.B (con la norma definida
    anteriormente), entonces $V$ es un e.B.
]

+ #proof[
    Primero notemos lo siguiente:
    $norm(f+U) =0$ ssi $inf{norm(f+g): g in U} = 0$ ssi para todo $eps >0$ existe $g in U$ t.q $norm(f+g) < eps$ ssi para
    todo $eps >0$ existe $g in U$ t.q $norm(f-g) < eps$, pues $-g in U$ al ser subespacio, ssi $f in cls(U)$.

    Sabemos que $V slash U$ es un e.v.

    Si $norm(dot)$ es una norma sobre $V slash U$ se cumple la observación anterior, a ademas podemos notar que $[0] = U$,
    por lo cual si $norm(f+U) = 0$ ssi $f+U = U$ ssi $$

    Supongamos ahora que $U$ es cerrado entonces por la observación anterior $norm(f+U) = 0$ ssi $f in U$, pues $U = cls(U)$,
    de lo cual se sigue $norm(f+U) = 0$ ssi $f+U = U$.

  ]
+ #proof[

  ]

+ #proof[

  ]