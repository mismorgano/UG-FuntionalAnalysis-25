#import "../config.typ": template, exercise, proof, sol, thmbox, thmplain, e

#import "../config.typ": ip, eps

#show: template.with([Tarea 6 \ Espacios de Bergman])


#let theorem = thmbox("theorem", "Teorema", inset: (left: 0em), base: none)
#let lemma = thmbox("lemma", "Lemma", inset: (left: 0em), base: none)
#let proposition = thmbox("proposition", "Proposición", inset: (left: 0em), base: none)
#set heading(numbering: "1.1.")
// #set par(spacing: 0.65em)
= Espacios de Bergman


== Un poco de historia

El principio de la década de 1970 marca el inicio de los estudios teóricos de estos espacios. Progreso sustancial fue
hecho por Horowitz y Korenblum, entre otros, en la parte de conjuntos de ceros, vectores cíclicos y subespacios
invariantes.

En 1980 vio el florecimiento de la teoría de operadores relacionados a espacios de Bergman. Sus descubrimientos fueron
presentados en el libro de Zhu de 1990 "Teoría de operadores en espacios de funciones".

La década de 1990 dio lugar a varios avances de la la teoría de funciones asi como en la teoría de operadores. De los
resultados mas notables esta la caracterización geométrica de sucesiones de interpolación y muestreo de parte de Seip y
el descubrimiento de Hedenmalm de los divisores contractivos de cero.

== Resultados

Sea $
  BB_n = {z in CC^n: abs(z) < 1},
$
la bola abierta unitaria en $CC^n$.

Por lo regular se escoge la bola unitaria porque la mayoría de resultados se obtienen usando formulas sencillas sin
mucho problema.

Para $alpha>-1$ la medida de Lebesgue _ponderada_ $d v_alpha$ esta definida por
$
  d v_alpha (z) = (Gamma(n+alpha+1))/(n!Gamma(n+1))(1 - abs(z)^2)^alpha d v(z) = (alpha +1)(1 - abs(z)^2)^alpha d v(z)
$
de forma que $d v_alpha$ sea una medida de probabilidad en $BB_n$.

Para $alpha > -1$ y $p>0$ el *espacio de Bergman ponderado* $A_alpha^p$ consiste de las funciones holomorfas en $L^p (BB_n, d v_alpha)$,
donde la norma esta dada por

$
  norm(f)_(p, alpha) = [integral_BB_n abs(f(z))^p d v_alpha(z)]^(1\p)
$

De lo anterior, podemos notar lo siguiente. Para $ 1 <= p < infinity$ el espacio $L^p (BB_n, d v_alpha)$ es un e.B con
la norma $norm(dot)_(p, alpha)$. Ademas $A_alpha^p$ es un subespacio lineal de $L^p (BB_n, d v_alpha)$, por lo cual para
ver que $A_alpha^p$ es un e.B basta ver que $A_alpha^p$ es cerrado en $L^p (BB_n, d v_alpha)$.

Para ver que $A_alpha^p$ es cerrado se usa el siguiente @bounded, el cual depende de la siguiente representación
integral.

#theorem[
  Si $alpha>-1$ y $f in A_alpha^1$, entonces
  $
    f(z) = integral_BB_n (f(w) d v_alpha(z))/(1- ip(z, w))^(n+1+alpha),
  $
  para todo $z in BB_n$.
]<integral_representation>

#lemma[
  Si $p>0$, $alpha >-1$, $ 0 <r<1$ y $m = (m_1, dots, m_n )$ es un multi-indice de enteros no negativos. Entonces existe
  una constante positiva $C$ t.q
  $
    abs((partial^m f)/(partial z^m) (z) ) <= C norm(f)_(p, alpha),
  $
  para toda $f in A_alpha^p$ y toda $z in BB_n$ con $abs(z) <= r$.
]<bounded>


#exercise[Espacios de Bergman ponderado][
  Para $alpha > -1$ y $p>0$ el *espacio de Bergman ponderado* $A_alpha^p$ consiste de las funciones holomorfas $f in L^p (BB_n, d v_alpha)$,
  es un e.B.
]
#proof[
  Sea ${f_n}_n$ una sucesión en $A_alpha^p$ y supongamos que $ lim_(n -> infinity) norm(f_n - f)_(p, alpha) = 0, $
  para algún $f in L^p (BB_n, d v_alpha)$, más aún, ${f_n}$ es una sucesión de Cauchy en $A_alpha^p$, luego por @bounded
  podemos ver que ${f_n}_n$ converge de manera uniforme en ${z in BB_n: abs(z) < r}$ el cual es compacto. Lo anterior
  junto con la suposición de que $f_n -> f$ en $L^p (BB_n, d v_alpha)$ nos dice que $f_n (z) -> f(z)$
  en ${z in BB_n: abs(z) < r}$ el cual es compacto, por lo cual concluimos que $f$ es analítica en $BB_n$
  #footnote[Aquí usamos un resultado de variable compleja que nos dice que si ${f_n}_n$ es una sucesión de funciones analíticas en
    un abierto $Omega$ que convergen de manera uniforme en conjuntos compactos de $Omega$ a $f$. Entonces $f$ es analítica
    en $Omega$] y entonces pertenece a $A_alpha^p$.
]

= Espacios $C_b^k (U)$

Se utiliza en el análisis de señales y imágenes, pues se usan para modelar transformaciones de imágenes y filtros en
espacios con restricciones de suavidad. En general el espacio $C_b^k (U)$ no es isomorfo a $L^p (U)$ ya que $C_b^k$ contiene
funciones continuas con derivadas acotadas, mientras que $L^p (U)$
al estar definido en términos de integrabilidad permite descontinuidades.

#exercise[][
  Dado $U subset RR^n$ abierto, $k in ZZ_(>=0)$, sea $C_b^k (U)$ el conjunto de todas las funciones $C^k$ $f:U ->CC$ tales
  que
  $ norm(f) := sum_(alpha in NN^m, abs(alpha) <=k) sup_(x in U) abs(partial^alpha f(x)) < infinity, $
  es un e.B.
]
#proof[
  Veamos primero que $norm(dot)$ es una norma. Notemos que por definición es no negativa, luego, si $f = 0$
  es claro que $norm(f) =0$, ahora si $norm(f)=0$ se cumple que $partial^alpha f(x) = 0$ para todo $alpha$, tomando $alpha=0$,
  se sigue que $f = 0$. La homogeneidad se sigue de la homogeneidad de la derivación y de que el supremo saca escalares.
  Finalmente para la desigualdad del triangulo, dadas $f, g in C_b^k (U)$, tenemos que
  $
    norm(f+g) &= sum_(alpha in NN^m, abs(alpha) <=k) sup_(x in U) abs(partial^alpha (f+g)(x)) = sum_(alpha in NN^m, abs(alpha) <=k) sup_(x in U) abs(partial^alpha f(x) + partial^alpha g(x)) \
              &<= sum_(alpha in NN^m, abs(alpha) <=k) sup_(x in U) {abs(partial^alpha f(x)) + abs(partial^alpha g(x))} \
              &<= sum_(alpha in NN^m, abs(alpha) <=k) sup_(x in U) abs(partial^alpha f(x)) + sum_(alpha in NN^m, abs(alpha) <=k) sup_(x in U) abs(partial^alpha g(x)) \
              &= norm(f) + norm(g).
  $
  Por ultimo veamos que $(C_b^k (U), norm(dot))$ es un e.B. Dada ${f_n}_n$ una sucesión de Cauchy en $C_b^k$. Por
  definición, para toda $eps>0$ existe $N in NN$ t.q
  $
    norm(f_n -f_m) = sum_(alpha in NN^m, abs(alpha) <=k) sup_(x in U) abs(partial^alpha f_n (x) - partial^alpha f_m (x)) < eps, quad forall n. m >= N,
  $
  en particular tenemos que cada $sup_(x in U) abs(partial^alpha f_n (x) - partial^alpha f_m (x))$ tiende a cero. Dado que
  las funciones $partial^alpha f$ son acotadas y que $(cal(B)(U), norm(dot)_infinity)$ es completo, se cumple que para
  cada $alpha$ existe $g_alpha in (cal(B)(U), norm(dot)_infinity)$ tal que $partial^alpha f -> g_alpha$, por lo cual $g_alpha$ también
  es continua. Tomando $alpha = (0, dots, 0)$, tenemos que $f_n -> g_0$ uniformemente a una $g_0$. Sea $f = g_0$ y veamos
  que $f in C_b^k (U)$, por lo anterior tenemos que $partial^alpha f_n -> g_alpha$, por lo cual $partial^alpha f = g_alpha$ para
  toda $alpha$. Ademas, cada $partial^alpha f$ esta acotada por la convergencia uniforme a $g_alpha$. Lo anterior nos
  asegura que $f in C_b^k (U)$
  y que $norm(f_n -f) -> 0$, como queremos.
]

= Espacios de Sobolev

== Motivación

Se origina en las ecuaciones diferenciales, por ejemplo 
$
  cases(-u'' + u = f , u(a) = u(b) =0 quad "para" f in C[a, b]),
$
una solución exacta $u$ es lo que llamaríamos una solución clásica, pero como sabemos encontrar la $u$ es difícil sino
que imposible, es por eso que se tienen en cuenta otro tipo de soluciones, las llamadas soluciones débiles que provienen
de resolver una ecuación integral que se deduce de la ecuación original, por ejemplo si $u$ es solución entonces para
cualquier $phi$ se debe cumplir que $f phi = -u'' phi + u phi$, y también
$
  integral_a^b f phi &= integral_a^b -u'' phi + integral_a^b u phi \
                     &= -[phi u]_a^b - integral_a^b u'phi' + integral_a^b u phi \
                     &= integral_a^b u'phi' + integral_a^b u phi.
$
notar de lo anterior que para que $u$ sea solución de la ecuación integral necesitamos que $u' in L^p$, y por tanto el
rango de soluciones débiles es mas grade que el clásico.

== Resultados

Primero definamos $W^(1, p)$ y el caso general $W^(p, s)$ se define de manera recursiva. Definimos
$
  W^(p, 1) (U) = { u in L^p(U): exists space g in L^p (U) "t.q" integral u phi' = - integral g phi " para toda " phi in C_0^1 (U)},
$
donde escribimos $u' := g$ para decir que $u'$ es la derivada de $u$ en el sentido $W^(p, 1)$, asi, podemos definir 
$
  W^(p, s) = { u in W^(p, s-1) : u' in W^(p, s-1)}.
$
Luego, podemos equipar a $W^(p, 1)$ ocn la norma 
$
  norm(u)_(W^(p, 1)) = norm(u)_p + norm(u')_p.
$
y para $W^(p, s)$ como 
$
  norm(u)_(W^(p, s)) = norm(u)_p + norm(u')_p + dots.c + norm(u^(s))_p.
$
#exercise[Espacios de Sobolev][
  Dado $U subset RR^n$ abierto y $ 1<=p<=infinity$, sea $W^(p, s) (U)$ el e.v de (las clases de equivalencia) las
  funciones $f:U->CC$ en $L^p$
  para las cuales todas sus derivadas distribucionales de orden total $<= s$ son representadas por funciones $L^p$,
  equipadas con la norma
  $
    norm(f) := (sum_(alpha in NN^m, abs(alpha) <=s) norm(partial^alpha f)^p)^(1/p),
  $
  es un e.B. Estos son los *espacios de Sobolev*.
]
#proof[
  Por la definición recursiva, mostraremos el resultado para $W^(p, 1)$. si ${u_n}_n subset W^(p, 1)$ es una sucesión de
  Cauchy podemos notar que ${u_n}$ y ${u_n'}$ son sucesiones de Cauchy en $L^p$ por lo cual convergen a ciertas $u, g in L^p$.
  Luego,
  $
    0 &= lim_(n->infinity) integral u_n phi' + integral u_n' phi \
      &= integral u phi' + integral g phi,
  $
  por lo cual $u in W^(p, 1)$.
]

= Espacios de Hölder

== Un poco de historia

Otto Hölder introdujo la condición de Hölder en su tesis doctoral "Contribuciones a la teoría de potencial" al estudiar
el comportamiento de una función potencial y sus derivadas cerca de la frontera, en 1882. Su principal aplicación es en
Ecuaciones diferenciales parciales elípticas.== Resultados

Se define la $alpha$-seminorma de Hölder en el espacio de funciones $f:[0, 1]->CC$ como
$
  abs(f) = sup_(x, y in [0, 1], x!= y){abs(f(x) -f(y))/abs(x-y)^alpha},
$
y esta se hace norma con
$
  norm(f) = abs(f(0)) + abs(f).
$
Entonces $Lambda^alpha ([0, 1])$ es el espacio de funciones tales que $norm(f)< infinity$.

#exercise[][
  Dado $alpha in (0, 1]$, sea $Lambda^alpha ([0, 1])$ es e.v de funciones $f:[0, 1] -> CC$ tales que
  $
    norm(f) = abs(f(0)) +sup_(x, y in [0, 1], x!= y){abs(f(x) -f(y))/abs(x-y)^alpha} < infinity,
  $
  es e.B. Estos son los *espacios de Hölder*. $Lambda^1([0, 1])$ es el *espacio Lipchitz*.
]
#proof[
  Primero veamos que $norm(dot)$ es norma. Es claro que es no negativa, la homogeneidad se obtiene dado que el supremo
  saca escalares y la desigualdad del triangulo se obtiene de propiedades del supremo. Por ultimo, si $f = 0$ tenemos que $norm(f) = 0$ y
  si $norm(f)=0$ entonces $f(0) = 0$ y ademas $ abs(f(x) -f(y))/abs(x-y)^alpha = 0, $
  para $x, y in [0, 1]$ distintos, lo cual implica que $f(x) = f(y)$, es decir, $f=0$.

  Ahora veamos que $Lambda^alpha ([0, 1])$ es completo. Sea ${f_n}_n$ una sucesión de Cauchy, entonces se cumple que
  $
    norm(f_n - f_m) = abs(f_n (0) - f_m (0)) + abs(f_n - f_m) ->0,
  $
  lo cual nos dice que ${f_n(0)}$ es de Cauchy y por tanto $f_n (0) -> c$, para algún $c in CC$. De manera similar, como $abs(f_n - f_m) ->0$ tenemos
  que, para $ x in (0, 1]$
  $ abs((f_n - f_m) (x) - (f_n - f_m) (0)) <= eps abs(x)^alpha <= eps, $
  como $(f_n - f_m) (0) ->0 $, tenemos que ${(f_n - f_m) (x)}$ es de Cauchy. Por lo anterior, definimos $f(x) = lim_(n->infinity) f_n (x)$ y
  notemos que como se cumple que
  $
    abs(f_n (x) - f_m (x)) <eps, quad forall n, m >= N,
  $
  haciendo $m->infinity$ tenemos que
  $
    abs(f_n (x) - f(x))<=eps,
  $
  para todo $x$ y por tanto la convergencia es uniforme, Veamos que $f in Lambda^alpha ([0, 1]) $ para ello notemos que
  para $n$ suficientemente grande
  $
    abs(f(x) - f(y)) &<= abs(f(x) - f_n (x)) + abs(f_n (x) - f_n (y)) + abs(f_n (y) - f(y)) \
                     & <= 2eps + abs(f_n) abs(x -y)^alpha,
  $
  recodemos que $abs(f_n)$ es acotado por lo cual
  $
    abs(f(x) - f(y)) <= 2eps + C abs(x-y)^alpha,
  $
  se sigue que
  $
    abs(f(x) - f(y)) <= C abs(x-y)^alpha,
  $
  como queremos. Por ultimo veamos que $f_n -> f$ en la norma. Para ello basta ver que $abs(f_n -f) -> 0$, simplemente
  notemos que
  $
    abs((f_n - f)(x) - (f_n - f)(y))/abs(x-y)^alpha= lim_(m->infinity) abs((f_n - f_m)(x) - (f_n - f_m)(y))/abs(x-y)^alpha = lim_(m->infinity) abs(f_n - f_m),
  $
  y recordando que $ abs(f_n - f_m) ->0$.
]
= Espacios de Hardy

== Un poco de historia

La teoría de estos espacios se remonta a estudios hechos por G.H. Hardy, J.E. Littlewood, I.I. Privalov, F. y M. Riesz,
V. Smirnov, y G.Szegö. Inicialmente el enfoque se centraba mucho en los elementos individuales, con el paso del tiempo
la perspectiva cambio y empezó a ver como un todo, como espacios lineales.

== Resultados

Algunas observaciones sobre este espacio, se cumple que $F in H^2 (BB)$ ssi $F = sum_(n=0)^infinity a_n z^n$, con $sum_(n=0)^infinity abs(a_n)^2 <infinity$.
Más aún se tiene que $sum_(n=0)^infinity abs(a_n)^2 = norm(F)$. Lo anterior nos dice que $H^2 (BB)$ puede verse como un
espacio de Hilbert ($cal(l)^2$).


#exercise[Espacios de Hardy][
  Sea $BB$ el disco unitario complejo centrado en $0$. El *espacio de Hardy* $H^2 (BB)$ consiste de todas las funciones
  holomorfas $F$ en el disco unitario $BB$ que satisfacen
  $ sup_(r in [0, 1]) 1/(2pi) integral_(-pi)^(pi) abs(F(r e^(i theta)))^2 d theta < infinity. $
  Definimos la norma en este espacio como la raíz cuadrada de la cantidad anterior.
]
El resultado para $H^2 (BB)$ se basa en la identidad de Parseval, la cual nos dice que si $f(z) = sum_(n=0)^infinity a_n z^n$,
entonces 
$
  1/(2pi) integral_0^(2pi) abs(f(r e(i theta)))^2 d theta = sum_(n=0)^infinity abs(a_n)^2 r^(2n),
$
también
$
  a_n r^n = 1/(2pi) integral_0^(2pi) f(r e^(i theta)) e^(-i n theta) d theta.
$
La prueba se basa en tomar la expansión del Teorema de Taylor truncada al terminó $n$, tomar el limite radial, y la
convergencia a los puntos de cerradura.

// #proposition[
//   Para todo $p>0$ y $alpha >-1$ el espacio de Bergman ponderado $A_alpha^p$ es cerrado en $L^p (BB_n, d v_alpha)$.
// ]

