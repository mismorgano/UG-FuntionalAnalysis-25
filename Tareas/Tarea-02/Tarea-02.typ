
#import "../config.typ": template, exercise, proof

// math imports
#import "../config.typ": eps

#show: doc => template(title: [Tarea 2], doc)

#exercise[][
  Dos espacios métricos sobre el mismo conjunto $(M, d_1)$ y $(M, d_2)$ se dice que son homeomorfos si la función
  identidad es bicontinua. En tal caso se dice que las métricas $d_1$ y $d_2$ son equivalentes.
  + Prueba que si $phi:RR->RR$ es un homeomorfismo, entonces la métrica en $RR$ definida por $d'(x, y) := abs(phi(x) - phi(y))$ es
    equivalente a la métrica usual en $RR$.
  + Prueba que $d'(x, y) := abs(x/(1+abs(x)) - y/(1+abs(y)))$ determina una métrica equivalente a la métrica usual en $RR$.
]
+ #proof[
    Sea $I:(RR, d') -> (RR, abs(dot))$ la función identidad, veamos que $(RR, d')$ y $(RR, abs(dot.c))$ son homeomorfos.
    Primero veamos que $I_d$ es continua. Dado $x in RR$ y $ eps >0$
  ]
+ #proof[

  ]


#exercise[][
  Considera dos métricas $d_1$ y $d_2$ en un espacio $X$ tales que existen $alpha>0$ y $beta>0$ cumpliendo
  $ alpha d_1(x, y) <= d_2(x, y) <= beta d_1(x,y). $
  + Prueba que $d_1$ y $d_2$ son equivalentes (según la definición en el ejercicio anterior).
  + Dada una métrica $d_1$, prueba que $d_2(x, y) := d_1(x, y) / (1+d_1(x, y))$ determina una métrica equivalente a $d_1$
  + Utiliza este ejemplo para probar que dos métricas pueden ser equivalentes sin que necesariamente existan $alpha$ y $beta$ cumpliendo
]
sss 

#exercise[][
  Dado un e.m $(X, d)$ un conjunto $K subset X$ se dice que es #emph()[totalmente acotado] si para cada $epsilon>0$ existen
  $x_1, dots, x_n in X$ tales que
  $ K subset union.big_(i=1)^n B(x_i, epsilon). $
  Prueba que las siguientes afirmaciones son equivalentes:
  + $K$ no es totalmente acotado en $X$,
  + Para algún $delta>0$ existe una sucesión ${x_n}_n subset K$ tal que $d(x_i, x_j) > delta$ para todo $i!=j$.
]

Si $X$ no es totalmente acotado existe $delta>0$ tal que no existe un conjunto finito de puntos $x_1, dots, x_n in X$ 
tales que $K subset.not union_(i=1)^n B(x_i, delta)$. Es claro que $K$ es no vació. Lo anterior nos dice que podemos
escoger un punto $x_1 in K$ tal que $K / B(x_1, delta) != emptyset$

#exercise[][
  Sea $X$ un e.m y $K subset X$ un subconjunto. Prueba que son equivalentes:
  + $K$ es compacto.
  + Toda sucesión en $K$ admite una subsucesión convergente cuyo limite está en $K$
  + $K$ es totalmente acotado y completo.
]

Supongamos que $K$ es compacto y sea ${x_n} subset K$ una sucesión y consideremos ${B(x_i, 1/i)}$ 

#exercise[][
  Da un ejemplo de un e.m que sea acotado pero no totalmente acotado.
]
_Solución:_ En este caso consideremos un e.m $X$ infinito y consideremos la métrica discreta $d: X times X -> X$, 
$ d(x, y) = cases(1 "si" x!=y, 0 "si" x = y.) $
Se puede ver que $X$ es acotado pues podemos tomar cualquier punto $x in X$ y se tiene que $X subset B(x, 2) $. Sin
embargo para $eps <1$ tenemos que $B(x, eps) = {x}$ para todo $x in X$, por lo cual si queremos cubrir $X$, necesitamos
una cantidad infinita de bolas.

#exercise[][
  Sea $f: X -> Y$ una función entre dos espacios métricos, $X, Y$. Prueba que si $X$
  es compacto y $f$ es continua, entonces $f$ es uniformemente continua.
]
Sea $eps>0$, como $f$ es continua para todo $x in X$ existe $delta_x>0$ t.q $f(B(x, delta_x)) subset B(f(x), eps)$,
luego, podemos notar que ${B(x, delta_x)}$ es una cubierta abierta de $X$

Consideremos esta colección de bolas abiertas, dado que $X$ es compacto tenemos ${B(x, delta_x)}$ admite una
sub-cubierta finita, es decir existen $x_1, dots, x_n in X$ y $delta_1, dots, delta_n in RR_+$ tal que 
$ X subset union B(x_i, delta_i). $
Sea $delta = min{delta_1, dots, d_n}$ y notemos que si $x, y in X $ tales que $d(x, y) < delta$ entonces Y consideremos
la siguiente cubierta abierta de $X$ ${B(x, delta)}$ la cual admite sub-cubierta finita, pues $X$ es compacto. Entonces