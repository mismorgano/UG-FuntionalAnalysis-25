#import "../config.typ": template, exercise, proof
#import "../config.typ": ip, cls
#show: template.with(title: [Tarea 9])

#let axler = [Axler]

#exercise[8A 1][
  Sea $V$ el e.v de funciones continuas y acotadas de $RR$ a $F$. Sea ${r_n}_n subset QQ$ una sucesión de numeros
  racionales. Para $f, g in V$, define
  $
    ip(f, g) = sum_(k=1)^infinity (f(r_k)overline(g(r_k)))/2^k.
  $
  Muestre que $ip(dot, dot)$ es un producto interno sobe $V$.
]
#proof[
  Veamos que efectivamente $ip(dot, dot)$ cumple las propiedades de producto interno. Pero antes notemos que como $f, g$ son
  acotadas existen $m, M$ tales que $abs(f) < m$ y $abs(g) <M$, asi $f(r_k) overline(g(r_k)) < (m M)/2^k$
  y por tanto
  $
    sum_(k=1)^infinity (f(r_k)overline(g(r_k)))/2^k < sum_(k=1)^infinity (m M)/2^k = n M < infinity
  $.

  - Primero veamos que _no es negativa_. Para ello simplemente notemos que dado $f in V$
    $
      ip(f, f) = sum_(k=1)^infinity (f(r_k)overline(f(r_k)))/2^k = sum_(k=1)^infinity norm(f(r_k))^2/2^k,
    $
    como cada sumando no es negativo, se cumple.
  - Ahora veamos _definiteness_. Es claro que si $f =0$, entonces $ip(f, f)=0$. Ahora si $f in V$ es tal que $ip(f, f) = 0$ entonces
    $
      sum_(k=1)^infinity abs(f(r_k))^2/2^k =0,
    $
    lo anterior pasa ssi $abs(f(r_k))^2 = 0$ para todo $k=1, 2, dots, $, lo cual sucede ssi $f(r_k) = 0$ para todo $k=1, 2, dots, $.
    #footnote[Seguramente los $r_k$ deben ser densos en $R$, asi por continuidad podemos aproximar $f(x)$, con una sucesión nula, por
      lo cual seria nula ].
  - _linealidad en la primera entrada_.
    $
      ip(f+ g, h) &= sum_(k=1)^infinity ((f + g)(r_k)overline(h(r_k)))/2^k = sum_(k=1)^infinity [(f(r_k)overline(h(r_k)))/2^k + (g(r_k)overline(h(r_k)))/2^k] \
                  &= sum_(k=1)^infinity (f(r_k)overline(h(r_k)))/2^k + sum_(k=1)^infinity (g(r_k)overline(h(r_k)))/2^k \
                  &= ip(f, h) + ip(g, h),
    $
    como queremos. Y ademas
    $
      ip(alpha f, g) = sum_(k=1)^infinity (alpha f(r_k)overline(g(r_k)))/2^k = alpha sum_(k=1)^infinity (f(r_k)overline(g(r_k)))/2^k = alpha ip(f, g)
    $
  - _simetría del conjugado_ Notemos que
    $
      overline(ip(g, f)) &= overline(sum_(k=1)^infinity (g(r_k)overline(f(r_k)))/2^k) = sum_(k=1)^infinity overline((g(r_k)overline(f(r_k)))/2^k) \
                         &= sum_(k=1)^infinity (overline(g(r_k)) f(r_k))/2^k \
                         &= ip(f, g).
    $

]

#exercise[8A 2][
  Prueba que si $mu$ es una medida y $f, g in cal(L)^2(mu)$, entonces
  $
    norm(f)^2 norm(g)^2 - abs(ip(f, g))^2 = 1/2 integral integral abs(f(x)g(y) - g(x)f(y))^2 d mu(y) d mu(x).
  $
]

#exercise[8A 9][
  El angulo entre dos vectores (pensados como flechas que parten desde el origen) en $RR^2$ o $RR^3$ puede definirse de
  manera geométrica. Sin embargo, la geometría no es muy fácil de visualizar en $R^n$, para $n>3$. Entonces el angulo
  entre dos vectores distintos de cero $a, b in RR^n$ es definido como
  $
    arccos(ip(a, b)/(norm(a)norm(b))),
  $
  donde la motivación para esta definición viene de $RR^2$. Explica porque la desigualdad de Cauchy-Schwarz es necesaria
  para que esta definición tenga sentido.
]

#exercise[8A 17][
  #let X = $[1, infinity)$
  Sea $lambda$ la medida de Lebesgue sobre $X$.
  + Prueba que si $f:X -> [0, infinity) $ es Borel medible, entonces
    $
      (integral_1^infinity f(x) d lambda(x)) ^2 <= integral_1^infinity x^2 (f(x))^2 d lambda(x).
    $
  + Describe el conjunto de las funciones Borel medibles $f:X -> [0, infinity)$ tal que se da la igualdad en la desigualdad
    anterior.
]

#exercise[8A 22][

]

#exercise[21 7][

]


#exercise[21 8][

]


#exercise[21 10][
  Para $j =1, 2, dots, $ sea $ip(dot, dot)_j$ un producto interno para un espacio lineal $X_j$ sobre $K$. Definamos $X$ como:
  $
    X = {(x_j)_j: x_j in X_j, j=1, 2, dots, "y" sum_(j=1)^infinity ip(x_j, x_j)_j < infinity},
  $
  con adición punto a punto y multiplicación escalar. Sea
  $
    ip(x, y) = sum_(j=1)^infinity ip(x_j, y_j)_j, quad x, y in X.
  $
  Entonces $X$ es un espacio lineal sobre $K$ y $ip(dot, dot)$ es un producto interno sobe $X$. Más aún, $X$ es un e.H sii
  cada $X_j$ es un e.H.

]
#proof[
  Primero veamos que $X$ con la adición punto a punto y multiplicación escalar es un espacio vectorial. Primero veamos que $ip(dot, dot)$ esta
  bien definido en $X$ con la suma y multiplicación. (es decir si $x, y in X$ entonces $alpha x + y in X$)
  $
    ip(alpha x + y, alpha x + y) &= sum_(j=1)^infinity ip(alpha x_j + y_j, alpha x_j + y_j) = sum_(j=1)^infinity norm(alpha x_j + y_j) \
                                 &<= sum_(j=1)^infinity alpha norm(x) + norm(y) <= alpha ip(x, y) + ip(y, y) < infinity.
  $

  Ahora veamos que $ip(dot, dot)$ es un producto interno en $X$.
  - _Positividad_ se sigue de que cada $ip(dot, dot)_j$ es positivo.
  - _definiteness_ Si $x = (0, 0, dots, )$ es claro que $ip(x, x) = 0$. Ahora si $x=(x_j)_j in X$ es t.q $ip(x, x) =0$
    entonces cada sumando es cero es decir $ip(x_j, x_j) =0$ lo cual implica que $x_j =0$ para todo $j$.
  - _linealidad en la primera entrada_
    $
      ip(x+y, w) &= sum_(j=1)^infinity ip(x_j + y_j, w_j)_j = sum_(j=1)^infinity ip(x_j, w_j)_j + ip(y_j, w_j) \
                 &= sum_(j=1)^infinity ip(x_j, w_j)_j + sum_(j=1)^infinity ip(y_j, w_j)_j \
                 &= ip(x, w) + ip(y, w)
    $
    y
    $
      ip(alpha x, y) = sum_(j=1)^infinity ip(alpha x_j, y_j)_j = sum_(j=1)^infinity alpha ip(x_j, y_j)_j = alpha sum_(j=1)^infinity ip(x_j, y_j)_j = alpha ip(x, y)
    $
  - _simetría en el conjugado_ notar que
    $
      overline(ip(y, x)) &= overline(sum_(j=1)^infinity ip(y_j, x_j)_j) = sum_(j=1)^infinity overline(ip(y_j, x_j)_j) \
                         &= sum_(j=1)^infinity ip(x_j, y_j)_j \
                         &= ip(x, y).
    $

]

#exercise[21 11][

]


#exercise[21 21][

]

