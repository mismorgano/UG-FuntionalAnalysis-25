#import "../config.typ": template, exercise, proof, sol

// math imports
#import "../config.typ": eps, cls

#show: doc => template(title: [Tarea 3], doc)
#show math.equation.where(block: false): box

#exercise[][
  Considera un e.n $(E, norm(dot))$. Denotemos por $(E^*, d^*)$ al e.m completado de $(E, d)$, donde $d$ es la métrica
  inducida en $E$ por $norm(dot)$. Demuestra que $E^*$ admite una estructura vectorial y que $norm(dot)$ se puede extender
  a una función $norm(dot)^*: E^* -> [0, infinity)$ cumpliendo que $(E^*, norm(dot)^*)$ es un e.B y que $norm(dot)^*_(|_(E times E)) = norm(dot)$.
]
#proof[
  Sea $i:E -> E^*$ la isometria t.q $E$ es isometrico a $i(E)$ que es un subespacio denso de $E^*$. //en un abuso de notación denotaremos por $E$ es este subespacio de $E^*$.
  Dados $x^*, y^* in E^*$ existen sucesiones ${x_n}_n, {y_n}_n subset E$
  tales que $i(x_n)-> x^*$ y $i(y_n)->y^*$, como $E$ es un e.n tenemos que ${x_n + y_n}_n $ es una sucesión en $E$, más
  aún ${i(x_n + y_n)}_n$ es una sucesión de Cauchy pues $i$ es isometría por lo cual converge en $E^*$, asi podemos
  definir la suma en $E^*$ como:
  $ x^* + y^* := lim_(n-> infinity) i(x_n + y_n), $
  de manera similar dado un escalar $lambda$ tenemos que ${lambda x_n}_n$
  es una sucesión en $E$ y ademas ${i(lambda x_n)}_n$ es de Cauchy, pues $i$ es isometría, por lo cual converge y entonces
  podemos definir la multiplicación escalar como:
  $ lambda x^* = lim_(n->infinity) i(lambda x_n). $
  Notemos que tanto la suma como la multiplicación escalar están bien definidas pues

  Ademas podemos ver que la conmutatividad, asociatividad y distributividad en $E^*$ se cumplen por que se cumplen en $E$.

  Definamos ahora una norma en $E^*$, dado $x^* in E^*$ existe sucesión ${x_n}_n subset E$ tal que $i(x_n) -> x^*$,
  notemos que ${norm(x_n)}_n$
  es de Cauchy, pues ${i(x_n)}$ es de Cauchy, ya que converge, e $i$ es isometría.

  Como $RR$ es completo se sigue que ${norm(x_n)}$ converge en $[0, infinity)$, pues la sucesión no es negativa. Asi pues,
  podemos definir la norma $norm(dot)^*$ en $E^*$ como
  $ norm(x^*) = lim_(n -> infinity) norm(x_n)$
  Veamos que $norm(dot): E^* -> [0, infinity)$ esta bien definida. Mostremos que $norm(dot)$ efectivamente es una norma.
  Para ello primero

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
  #let x = $bold(x)$
  Veamos que $cal(l)^1$ es un e.v. Si $bold(x) = {x_n}_n, bold(y)={y_n}_n in cal(l)^1$, definamos su suma como $bold(x) + bold(y) := {x_n + y_n}_n$,
  notemos que esta bien definida. Para $m>=n$ se cumple que
  $
    sum_(i=1)^n abs(x_i + y_i) <= sum_(i=1)^n abs(x_i) + sum_(i=1)^n abs(y_i) <= sum_(i=1)^m abs(x_i) + sum_(i=1)^m abs(y_i),
  $
  al tomar el limite cuando $m-> infinity$, vemos que para todo $n$ ,
  $ sum_(i=1)^n abs(x_i + y_i) <= sum_(i=1)^infinity abs(x_i) + sum_(i=1)^infinity abs(y_i), $
  por lo cual ${x_n + y_n}_n$ es acotada y no decreciente, por tanto converge cuando $n-> infinity$, asi tenemos que $bold(x) + bold(y) in cal(l)^1$,
  más aún, notemos que lo anterior muestra la desigualdad del triangulo para $norm(dot)$. Dado $bold(x) in cal(l)^1$ y $lambda$ un
  escalar definimos $lambda bold(x) := {lambda x_n}_n$, podemos ver
  $
    sum_(i=1)^n abs(lambda x_i) = sum_(i=1)^n abs(lambda)abs(x_i) = abs(lambda) sum_(i=1)^n abs(x_i),
  $
  haciendo $n->infinity$ obtenemos que
  $
    sum_(i=1)^infinity abs(lambda x_i) = abs(lambda) sum_(i=1)^infinity abs(x_i),
  $
  por lo cual $lambda bold(x) in cal(l)^1$ para todo escalar $lambda$, más aún, notemos que lo anterior muestra la
  homogeneidad de $norm(dot)$.


  Sabiendo que $cal(l)^1$ es un e.v, ahora veamos que $norm(dot)$ es una norma sobre $cal(l)^1$.
  - Veamos que $norm(dot)$ es *no degenerada*. Notemos que $norm((a_1, a_2, dots,)) = 0$ ssi $sum_(k=1)^infinity abs(a_k) = 0$ lo
    cual pasa ssi $abs(a_k) = 0$ para todo $k in NN$, es decir, si $a_k =0$ para todo $k in NN$.
  - Al inicio notamos que $norm(dot)$ es homogénea.
  - Al inicio notamos que $norm(dot)$ cumple la desigualdad del triangulo.

  Por ultimo veamos que $cal(l)^1$ es completo. Sea ${bold(x^k)}_k subset cal(l)^1$ una s.C, donde $bold(x^k) = (x^k_i)_i$.
  Notemos que como ${bold(x^n)}_n$ es una s.C, dado $eps >0$ existe $N in NN$ t.q para $n, m >= N$ se cumple que
  $
    norm(bold(x^n) - bold(x^m)) = sum_(i=1)^infinity abs(x^n_i - x^m_i) < eps,
  $
  de donde podemos notar que $abs(x^n_i - x^m_i) <= norm(bold(x^n) - bold(x^m)) < eps$ para todo $i in NN$, por lo cual
  dado $i in NN$ se cumple que ${x^n_i}_n$ es una s.C y por tanto ${x^n_i}_n -> x_i$ cuando $n -> infinity$ para cierto $x_i$.
  Consideremos $#x = (x_i)_i$, primero probemos que $#x in cal(l)^1$. Como ${bold(x^k)}_k$ es una s.C, se cumple que es
  acotada, entonces existe $C >0$ t.q
  $norm(bold(x^k)) < C$ para toda $k in NN$, esto nos dice que
  $
    sum_(i=1)^infinity abs(x^k_i) < C,
  $
  para todo $k in NN$, en especial tenemos que para tod $n in NN$ se cumple que
  $
    sum_(i=1)^n abs(x^k_i) <= sum_(i=1)^infinity abs(x^k_i) < C,
  $
  luego, podemos fijar un $n in NN$ y para cada $i = 1, dots, n$ existe $N_i in NN$ t.q $abs(x_i - x^k_i) < eps/n$ para $k>=N_i$,
  por lo cual al tomar $k$ suficientemente grande, es decir para todo $k > max_i {N_i}$, se cumple , por la desigualdad
  del triangulo y lo notado anteriormente, que
  $
    sum_(i=1)^n abs(x_i) <= sum_(i=1)^n abs(x_i - x^k_i) + sum_(i=1)^n abs(x^k_i) <= eps + C,
  $
  entonces al hacer $k -> infinity$ obtenemos que
  $
    sum_(i=1)^n abs(x_i) <= C,
  $
  para todo $n in NN$, se sigue que
  $
    sum_(i=1)^infinity abs(x_i) <= C,
  $
  y por tanto $#x in cal(l)^1$.

  Por ultimo veamos que $bold(x^k) -> #x$. Recordando que ${bold(x^n)}_n$ es una s.C tenemos que para todo $eps>0$ y $k, m$ suficientemente
  grandes se cumple
  $
    norm(bold(x^k) - bold(x^m)) = sum_(i=1)^infinity abs(x^k_i - x^m_i) < eps,
  $
  de donde se obtiene que para todo $n in NN$
  $
    sum_(i=1)^n abs(x^k_i - x^m_i) < eps,
  $
  y por tanto al hacer $m->infinity$ obtenemos que
  $
    sum_(i=1)^n abs(x^k_i - x_i) <= eps,
  $
  para todo $n in NN$ y $k$ suficientemente grande. Por lo cual podemos hacer $n->infinity$ y obtener que
  $
    sum_(i=1)^infinity abs(x^k_i - x_i) = norm(bold(x^k) - #x) <= eps,
  $
  para $k$ suficientemente grande. Lo anterior implica que $bold(x^k) -> #x$ en $cal(l)^1$, como queremos.

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
  perdida de generalidad podemos suponer que $B(0, r) subset U$, luego, dado $x in V$ notemos que $r/2 x/norm(x) in B(0, r)$,
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

+ #proof[
    Primero veamos la unicidad, si $T_1, T_2: cls(U) -> W$ son continuas tales que $T_1|_U = T_2|_U = S$ entonces como $U$ es
    denso en $cls(U)$
    tenemos que $T_1 = T_2$. Ahora mostraremos su existencia. Sea $u in cls(U)$, entonces existe ${u_n}_n subset U$ t.q $u_n -> u$,
    consideremos ${S(u_n)}_n subset W$ y veamos que es una sucesión de Cauchy en $W$. Como $S$ es un b.l.m tenemos que
    $
      norm(S(u_n) - S(u_m))_W = norm(S(u_n - u_m))_W <= norm(S) norm(u_n - u_m)_U,
    $
    dado que ${u_n}_n$ es una sucesión de Cauchy, pues es convergente, tenemos que ${S(u_n)}_n$ también. El hecho que $W$ es
    un e.B implica que $S(u_n) -> w$, para algún $w in W$. De lo anterior podemos definir $T:cls(U)->W$, dada por
    $
      T(u) = lim_(n-> infinity) S(u_n),
    $
    para $u_n -> u$. Es claro que $T$ es un m.l pues $S$ es lineal y ademas el limite de sucesiones es lineal. Notemos que $T$ esta
    bien definida, pues si $u_n -> u$ y $v_n -> u$, con $u in cls(U)$ se cumple que que
    $
      lim_(n-> infinity) S(u_n) = lim_(n-> infinity) S(v_n),
    $
    pues $S$ es continua al ser un b.l.m. Ademas es claro que $T|_U =S$ pues $S$ es continua.
  ]
+ #proof[
    Sea $u in cls(U)$ con $norm(u) <= 1$ entonces exista sucesión ${u_n}_n subset U$ t.q $u_n -> u$
    entonces se cumple que
    $
      norm(T(u)) = norm(lim_(n-> infinity) S(u_n)) = lim_(n-> infinity) norm(S(u_n)) <= lim_(n-> infinity) norm(S) norm(u_n) = norm(S) norm(u) = norm(S),
    $
    por lo cual $norm(S)$ es una cota superior de $norm(T(u))$, como $u$ fue arbitrario tenemos que $norm(T) <= norm(S)$.

    Ahora se $u in U$ t.q $norm(u) <= 1$ entonces se cumple que $norm(S(u)) = norm(T(u)) <= norm(T) norm(u) <= norm(T)$, asi
    $norm(T)$ es cota superior de $norm(S(u))$ asi $norm(S) <= norm(T)$.

    De lo anterior obtenemos lo deseado.
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
    Supongamos que $norm(dot)$ es una norma sobre $V slash U$ y sea $u in cls(U)$ entonces existe sucesión ${u_n}_n subset U$ t.q
    $u_n -> u$, lo anterior implica que $norm(u + U) = 0$. Como $norm(dot)$ es norma se sigue que $u + U = U$ y por tanto $u in U$.

    Supongamos ahora que $U$ es cerrado entonces por la observación anterior $norm(f+U) = 0$ ssi $f in U$, pues $U = cls(U)$,
    de lo cual se sigue $norm(f+U) = 0$ ssi $f+U = U$.

    Supongamos que $U$ es cerrado. Si $norm(f + U) = 0$ entonces $f in cls(U)$ y por tanto $f in U$, pues $U$ es cerrado, se
    sigue que $f + U = U$. Notemos que
    $
      norm(lambda f +U) = inf{norm(lambda f +g): g in U} = inf{norm(lambda + lambda g): g in U} inf{abs(lambda)norm(f+g): g in U} = abs(lambda) inf{norm(f+g): g in U} = abs(lambda) norm(f + U)
    $
  ]
+ #proof[

  ]

+ #proof[

  ]