#import "../config.typ": template, exercise

// math functions
#import "../config.typ": cls


#show: doc => template([Tarea 1], doc)


#exercise[6A 1][
  Verifica que cada una de las siguientes susodichas métricas en efecto es métrica.
  + Supón que $V$ es un conjunto no vació. Define $d: V times V -> [0, infinity)$ como sigue:
    $ d(f, g) = cases(1 "si" f != g, 0 "si" f =g). $
    Entonces $d$ es una metric en $V$.
  + Define $d$ en $RR times RR$ como $d(x, y) = abs(x-y)$. Entonces $d$ es una métrica sobre $RR$.
  + Para $n in ZZ^+$, define $d$ en $RR^n times RR^n$ como
    $ d((x_1, dots, x_n), (y_1, dots, y_n)) = max{abs(x_1 - y_1), dots, abs(x_n-y_n)}. $
    Entonces $d$ es una métrica sobre $RR^n$.
]

#exercise[6A 2][
  Demuestra que todo conjunto finito de un e.m es cerrado.
]
Basta ver  que los singulares ${x}$ son cerrados. $ {x} = $

Cualquier sucesion convergente tiene que ser eventualmente constante y por tanto contiene su limite.

#exercise[6A 3][
  Prueba que todo bola cerrada en un e.m es cerrada.
]

Veamos que el complemento es abierto.



#exercise[6A 6][
  + Demuestra que si $V$ es un e.m, $f in V$, y $r>0$, entonces $cls(B(f, r)) subset cls(B)(f, r).$
  + Da un ejemplo de un e.m $V$, $f in V$, y $r>0$ t.q $cls(B(f, r)) != cls(B)(f, r).$
]

#exercise[6A 8 (cerradura)][
  Demuestra que si $V$ es un e.m y $E subset V$. Entonces
  + $cls(E) = { g in V: "existe una sucesión" {f_n}subset E "t.q" lim_(k -> infinity) f_k = g}; $
  + $cls(E)$ es la intersección de todos los conjuntos cerrados de $V$ que contienen a $E$;
  + $cls(E)$ es un conjunto cerrado de $V$;
  + $cls(E)$ es cerrado ssi $cls(E)=E$;
  + $E$ es cerrado ssi $E$ contiene el limite de cualquier sucesión convergente de elementos de $E$.
]


#exercise[6A 10][
  Prueba o da un contraejemplo: Si $V$ es un e.m y $U, W$ son subconjuntos de $V$, entonces $cls(U) union cls(W) = cls(U union W)$.
]


#exercise[6A 11][
  Prueba o da un contraejemplo: Si $V$ es un e.m y $U, W$ son subconjuntos de $V$, entonces $cls(U) sect cls(W) = cls(U sect W)$.
]

#exercise[6A 15][
  Prueba que cada uno de los espacios métricos son espacios métricos completos
]

#exercise[6A 16][
  Supongamos que $(U, d)$ es un e.m. Sea $W$ el conjunto de todas las sucesiones de Cauchy de elementos de $U$.
  + Para $(f_n)$ y $(g_n)$ en $W$, definimos $(f_n) equiv (g_n)$ como 
    $ lim_(k->infinity) d(f_k, g_k) = 0. $ 
    Muestra que $equiv$ es una relación de equivalencia en $W$.
  + Sea $V$ el conjunto de las clases de equivalencia de elementos de $W$ bajo la relación de equivalencia anterior.
    Para $(f_n) in W$, sea 
  + Muestra que $(V, d_V)$ es un e.m completo.
  + Muestra que el mapeo de $U$ a $V$ toma $f in U$
  + Explica por que lo anterior muestra que todo e.m es subconjunto de un e.m completo.
]


