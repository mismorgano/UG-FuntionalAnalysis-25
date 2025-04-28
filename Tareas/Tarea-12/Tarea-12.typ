#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

#import "../config.typ": template, exercise, proof 
#import "../config.typ": ip, cls
#show: template.with(title: [Tarea 12], subtitle: [Teorema de Hahn-Banach])

#set cite(style: "alphanumeric", form: "prose")

#show math.equation.where(block: false): box

#exercise[
  Utiliza el Teorema de Hahn-Banach para probar que si $Y$ es un e.B y $X subset Y$ es un subespacio cerrado, entonces
  cualquier b.l.o $T in cal(L)(X, cal(l)_infinity)$ extiende a un $hat(T) in cal(L)(y, cal(l)_infinity)$ de manera que
  $norm(hat(T)) = norm(T)$. ¿Es única la extensión $hat(T)$? Justifica tu respuesta.
  // #align(center)[
  //   #diagram($
  //     X edge(T, ->) edge("u", arrow.hook) & cal(l)_infinity
  //     edge("ul", ->)                      & Y
  //   // X edge(T, ->) cal(l)_infinity
  //   $)
  // ]
  #align(center)[
    #diagram($
      Y edge("dr", hat(T), "-->") \
      X edge(T, ->) edge("u", arrow.hook) & cal(l)_infinity
    $)
  ]
]

#exercise[
  Prueba que si $X$ es un subespacio cerrado de $cal(l)^2$ es un subespacio cerrado, entonces cualquier b.l.o $T in cal(L)(X, cal(l)_2)$ extiende
  a un $hat(T) in cal(L)( cal(l)^2, cal(l)_infinity)$. ¿Se cumplirá $norm(hat(T)) = norm(T)$? Justifica tu respuesta.
  #align(center)[
    #diagram($
      cal(l)^2 edge("dr", hat(T), "-->") \
      X edge(T, ->) edge("u", arrow.hook) & cal(l)^2
    $)
  ]
]

#exercise[
  Para $1 <= p <= infinity$, encuentra un f.l continuo en $cal(l)^p$ t.q separe al conjunto $C$ del punto $x_0 = (1/n^2)_n$,
  donde
  $
    C := {(x_n)_n in cal(l)^p; sup {x_n: n in NN <= 0}}.
  $
]

#exercise[@limaye 7.8][
  Sea $X = KK^2$ con la norma $norm(space)_infinity$.
  + Considera $Y = {(x, y) in X: y = 0}$ y define $g in Y' #footnote[Aquí $X'$ denota el espacio dual de $X$.]$ dada por $g(x, y) = x$.
    La única extensión de Hahn-Banach de $g$ a $X$ esta dada por $f(x, y) = x$.
  + Considera $Z = { (x, y) in X: x = y}$, y define $g in Z'$ como $g(x, y) = x$. La extensión de Hahn-Banach de $g$ a $X$ esta
    dada por $f(x, y) = t x + (1-t) y$, donde $t in [0, 1]$ esta fijo.
]


#let U = $cls(B)(0, norm(a))$

#exercise[@limaye 7.9][
  Sea $0 != a in X$ y $0 != f in X'$. Entonces $f$ es un funcional de soporte #footnote[Un *funcional de soporte* (para $E$ en $b$) es un elemento del espacio dual distinto de $0$ t.q $Re f(x) <= Re f(b)$ para
    todo $x in E$, donde $E$ es un *cuerpo convexo*, i.e, conjunto convexo con interior no vació, y $b$ esta en la frontera
    de $E$. ] para $#U$ en $a$ ssi $norm(f)norm(a) = f(a)$.
]


#exercise[@limaye 7.10][
  Sea $0 != a in X$. Existe un único$f in X'$ t.q $norm(f) = 1$ y $f(a) = norm(a)$ ssi existe un único funcional de
  soporte $f$ para
  $#U$ en $a$ t.q $f(a) = norm(a)$ ssi existe un único hiperplano de soporte #footnote[Un *hiperplano de soporte* (para $E$ en $b$) es el hiperplano real ${x in X: Re f(x) = Re f(b)}$ con $f$ un funcional de
    soporte para $E$ en $b$. ] para $#U$ en $a$. ]

#exercise[@limaye 7.11 Helly 1912][
  Para cada $s$ en algún conjunto indexado $S$, sea $x_s in X$ y $k_s in KK$. Sea $a>=0$. Entonces existe algún $f in X'$ t.q
  $f(x_s) = k_s$ para todo $s in S$ ssi $abs(sum_s h_s k_s) <= alpha norm(sum_s h_s x_s), $ donde la suma $sum_s$ es
  finita con
  $s in S$ y $h_s in KK$.
]

#exercise[@limaye 7.12][
  Sea $X = C([a, b])$ con la norma del supremo, y sea $Y$ el subespacio de $X$ que consiste de todas las funciones
  constantes y $g(y) = y(a)$ para $y in Y$. Para una función no decreciente sobre $[a, b]$ t.q $z(b) - z(a) = 1$, define
  $
    f_z (x) = integral_a^b x d z, quad x in X.
  $
  Entonces $f_z$ es una extensión Hahn-Banach de $g$. En particular, si para un $t$ fijo en $[a, b]$, $z_t$ denota la
  función característica de $[a, b]$, entonces $f_(z t) = x(t), x in X$.
]

#exercise[@limaye 7.13][
  Sea $Y$ el subespacio de un e.n $X$, y $g in Y'$. Entonces el conjunto de todas las extensiones de Hahn-Banach de $g$ a $X$ es
  no vacío, convexo, cerrado y acotado de $X'$. Su interior es vacío. Puede no ser compacto.
]

#exercise[@limaye 7.15][

]

#bibliography("../biblio.yml")