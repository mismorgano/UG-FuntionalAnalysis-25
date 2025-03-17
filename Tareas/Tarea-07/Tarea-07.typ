#import "../config.typ": *

#show: template.with(title: [Tarea 7])

#exercise[6E 5][
  Supongamos que
  $
    X = {0} union.big_(k=1)^infinity {1/k},
  $
  y $d(x, y)= abs(x-y)$ para $x, y in X$.



  + Muestra que $(X, d)$ es un e.m completo.
  + Cada conjunto de la forma ${x}$ para $x in X$ es un subconjunto cerrado de $RR$ que tiene interior vacío como
    subconjunto de $R$. Claramente $X$ es una union numerable de tales conjuntos. Explica porque esto no viola el enunciado
    del Teorema de Baire que un e.m completo no es la union contable de conjuntos cerrados con interior no vacío.
]

#exercise("AE 6")[
  Da un ejemplo de un e.m que es la union contable de subconjuntos cerrados con interior vacío.
]

#exercise[AE 7][
  + Define $f:RR -> RR$ como sigue:
    $
      f(x) = cases(
        0 "si" x "es irracional",
        1/n "si" x "es racional y" n "es el menor entero positivo " \ " t.q" x = m/n "para algún entero" m,

      )
    $
  + Muestra que no existe una colección contable de subconjuntos abiertos de $RR$ cuya intersección sea igual a $QQ$.
  + Prueba que no existe una función $f:RR->RR$ t.q $f$ es continua en $QQ$ pero discontinua en $RR without QQ$.
]

#exercise[6E 10][
  Da un ejemplo de un e.B $V$, un e.v.n $W$, un m.l.a $T$ de $V$ sobre $W$ y un conjunto abierto $G$ de $V$ t.q $T(G)$ no
  es un conjunto abierto de $W$.
]

#exercise[6E 11][
  Muestra que existe un e.v.n $V$, un e.B $W$, un m.l.a $T$ de $V$ a $W$, y un conjunto abierto $G$ de $V$ t.q $T(G)$ no
  es un conjunto abierto de $W$.
]


#exercise[6E 12][
  Supongamos que $T:V -> W$ es un m.l.a donde $V, W$ son espacios de Banach. Demuestra que $T$ esta acotado por abajo ssi $T$ es
  inyectiva y $T(V)$ es un un subespacio cerrado de $W$.
]

#exercise[
  Prueba que
  $
    sum_(j>=0) 2^(-j) exp(sqrt(-1)3^j x)
  $
  es una función continua que no es diferenciable en ningún punto.
]

#exercise[
  Demuestra que
  $
    sum_(j>=0) 10^(-j) {10^j x},
  $
  donde ${x}$ es la distancia al entero mas cercano.
]
