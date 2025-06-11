#import "@preview/touying:0.6.1": *
#import "@preview/equate:0.3.2": *
#import "../Tareas/config.typ": ip, cls, thmbox, proof, thmrules
#import themes.university: *
#import "@preview/theorion:0.3.3":*
#import cosmos.clouds: *
#import "../definitions.typ": apply_definitions

#show: apply_definitions
#show: show-theorion
// #show: thmrules


#show: equate.with(breakable: true, sub-numbering: true)
#set math.equation(numbering: "(1.1)")

// theorion environments
// #let theorem = theorem.with(fill: rgb("#65d4e0"))
// #let theorem-box = theorem-box.with(fill: rgb("#65d4e0"))

// #let theorem = thmbox("theorem", "Teorema", )
// #let proposition = thmbox("proposition", "Proposición")
// #let lemma = thmbox("lemma", "Lema")
// #let corollary = thmbox("corrolary", "Colorario")
// #let definition = thmbox("definition", "Definicion")


#show: university-theme.with(aspect-ratio: "4-3", config-info(
  title: [La desigualdad de Grothendieck],
  subtitle: [Análisis Funcional I],
  author: [Antonio Barragán Romero],
  institution: [Universidad de Guanajuato],
))

#set text(lang: "es", size: 16pt)
#set cite(style: "alphanumeric", form: "prose")

#show "v.a": _ =>[variable aleatoria]
#show "v.a.s": _ => [variables aleatorias]
#show "GI": [desigualdad de Grothendieck]


#title-slide(authors: grid(columns: (1fr, 1fr), align(center)[
  Maite Fernández Unzueta. \
  #link("mailto:maite@cimat.mx")
], align(center)[
  Antonio Barragán Romero. \
  #link("mailto:antonio.barragan@cimat.mx")
]))


// #show par: set text(size: 16pt)
// #show math.equation: set text(size: 16pt)
// #show bibliography: set text(size: 16pt)




#let M = $M_(m, n)$
#let l = $cal(l)$
#let L = $cal(L)$
#let P = $bold(P)$
#let D = $upright(bold(D))$
#let I = $I$


= Abstract

El objetivo de esta presentación es dar una breve introducción a la desigualdad de Grothendieck, un poco de historia,
demostración, consecuencias, su importancia y aplicaciones (Para tratar de entenderla). La referencia principal es
@Garling_2007.

== Un poco de historia

Según @pisier2011grothendieckstheorempastpresent En 1953, Grothendieck publico un extraordinario articulo titulado #quote()[Résumé de la théorie métrique des produits tensoriels topologiques],
ahora muy comúnmente referenciado en broma como #quote()[El resumen de Grothendieck]. Al igual que su tesis, el articulo
estaba dedicado a los productos tensoriales de espacios vectoriales, pero en contraste con su tesis que estaba dedicada
al caso localmente convexo, su #quote()[Résumé] se concentraba solo en espacios de Banach (#quote()[théorie métrique]).
El resultado central de este largo articulo (#quote()[Théorème fondamental de la théorie métrique des produits tensoriels topologiques])
es ahora conocido como el Teorema de Grothendieck (o desigualdad de Grothendieck). Nos referiremos a el como GT.

Aunque el articulo fue revisado en _Math Reviews_ por nada menos que Dvoretzky, parece que fue ampliamente ignorado,
hasta que un articulo de Lindenstrauss y Pełczyński, le presto atención. Lo cual puede tener varias explicaciones:
estaba escrito en Frances, publicado en una revista brasileña con circulación muy limitada, y con un tema radical
respecto a la tesis celebre del author, pues ignoro las cuestiones localmente convexas y se enfoco exclusivamente en
espacios de Banach, una decision que iba posiblemente contra la corriente en ese momento.

La situación cambio radicalmente (15 años después) cuando Lindenstrauss y Pełczyński, descubrieron las numerosas joyas
del articulo, incluyendo solución a varios problemas abiertos que surgieron después de su publicación.

Como menciona @pisier1984factorization el trabajo de Grothendieck en su #quote()[Résumé] gira entorno a las siguientes
preguntas:
- ¿Cuando un operador $u : X -> Y$ (entre dos espacios de Banach) se factoriza mediante un e.H?
- ¿Para que espacios $X, Y$ esto pasa para todos los operadores $u$?

== Introducción

= Background and notation



== Desigualdad de Khintchine

#theorem(
  )[
  Existen constantes positivas $A_p, B_p$, para $0< p <infinity $, t.q si $a_1, dots, a_N$ son numeros reales y $epsilon.alt_1, dots, epsilon.alt_N$
  son variables aleatorias Bernoulli, entonces
  $
    A_p norm(s_N)_p <= sigma <= B_p norm(s_N)_p,
  $
  donde $s_N = sum_(n=1)^N epsilon.alt_n a_n$ y $sigma^2= norm(s_N)_2^2 = sum_(n=1)^N a_n^2$.
]<thm:Khintchine_inequality>

Valores para $A_p, B_p$ son conocidos, pero para el caso que nos concierne, $p=1$, basta saber que $A_1= 1$ y $B_1 = sqrt(2)$ funcionan.


== Summing Operators 

#definition(
  )[
  Decimos que un m.l $T$ de un e.B $(E, norm(dot)_E)$ a un e.B $(F, norm(dot)_F)$ es _absolutamente sumable_ si siempre
  que $sum_(n=1)^infinity x_n$
  converge incondicionalmente en $E$ entonces $sum_(n=1)^infinity T(x_n)$ converge incondicionalmente en $F$.
]

#definition(
  title: [$(p, q)$-summing operators],
)[
  Supongamos que $1 <= q <= p < infinity$. Decimos que un m.l $T$ de un e.B $(E, norm(dot)_E)$ a otro e.B $(F, norm(dot)_F)$ es $(p, q)$_-summing_
  si existe una constante $K$ t.q
  $
    (sum_(n=1)^N norm(T(x_n))^p)^(1/p) <= K sup_(phi in B_(E^*)) (sum_(n=1)^N abs(phi(x_n))^q)^(1/q) #<asterisk>
  $
  para todo $N$ y todos $x_1, dots, x_N in E$. Denotamos por $pi_(p, q) (T)$ a la menor constante $K$, y denotamos por $product_(p, q) (E, F)$ al
  conjunto de todos los mapeos $(p, q)$-summing de $E$ a $F$. Llamamos un mapeo $(p, p)$-summing como un mapeo $p$-summing,
  y escribimos $product_p$ en lugar de
  $product_(p, p)$ y $pi_p$ en lugar de $pi_(p, p)$.
]

#theorem(
  )[
  Supongamos que $(E, norm(dot)_E)$ y $(F, norm(dot)_F)$ son espacios de Banach y que $1 <= q <= p < infinity$. Entonces $product_(p, q) (E, F)$ es
  un subespacio lineal de $L(E, F)$ y $pi_(p, q)$ es una norma sobre $product_(p, q) (E, F)$, bajo la cual $product_(p, q) (E, F)$ es
  un e.B. Si $T in product_(p, q) (E, F)$ entonces $norm(T) <= pi_(p, q) (T)$, y si $R in L(D, E)$ y $S in L(F, G)$ entonces $S T R in product_(p, q) (D, G)$
  y $pi_(p, q) (S T R) <= norm(S) pi_(p, q) (T) norm(R)$. Si se cumple @asterisk para todo $x_1, dots, x_N$ en un
  subconjunto denso de $E$ entonces $T in product_(p, q) (E, F)$ y $pi_(p, q) (T)$ es la menor constante $K$.
]<thm:p-q-summing>

== Desigualdad de Grothendieck


Vamos a considerar desigualdades entre normas en el espacio $#M (RR)$ or $#M (CC)$ de matrices $m times n$ reales o
complejas.

Supongamos que $A = (a_(i j)) in #M$. Nuestro principal objeto de estudio sera la norma
$
  norm(A) &= sup {sum_(i=1)^m abs(sum_(j=1)^n a_(i j) t_j): abs(t_j) <= 1} = sup {sum_(i=1)^m abs(sum_(j=1)^n): norm(t)_infinity <= 1} \
          &= sup {sum_(i=1)^m abs(sum_(j=1)^n a_(i j) s_i t_j): abs(s_i) <= 1, abs(t_j) <= 1} = sup {sum_(i=1)^m abs(sum_(j=1)^n a_(i j) s_i t_j): abs(s_i) <= 1, abs(t_j) <= 1}
$

Notar que $norm(A)$ es simplemente es la norma del operador $T_A: #l^n_infinity -> #l^m_1$, dado por $T_A (t) = (sum_(j=1)^n a_(i j) t_j)_(i=1)^m$,
para $t = (t_1, dots, t_n) in #l^n_infinity$.

consideremos el caso real y definamos $(a_i) = (a_(i j))_(j=1)^n$, t.q $a_i in RR^n$. Las siguientes desigualdades se
deben a Littlewood y Orlicz.

#proposition(
  )[
  Si $A in #M (RR)$ entonces $sum_(i=1)^m norm(a_i)_2 <= sqrt(2) norm(A)$ (Littlewood) y $(sum_(i=1)^m norm(a_i)_1^2)^(1/2) <= sqrt(2) norm(A)$ (Orlicz).
]
#proof(
  )[
  Usando @thm:Khintchine_inequality obtenemos que
  $
    sum_(i=1)^m norm(a_i)_2 &= sum_(i=1)^m (sum_(j=1)^n abs(a_(i j))^2)^(1/2)
    <= sqrt(2) sum_(i=1)^m EE(abs(sum_(j=1)^n epsilon.alt_j a_(i j))) \
                            &= sqrt(2) EE (sum_(i=1)^m abs(sum_(j=1)^n epsilon.alt_j a_(i j))) <= sqrt(2) norm(A).
  $
  De manera similar tenemos que
  $
    (sum_(i=1)^m norm(a_i)_1^2)^(1/2) &= (sum_(i=1)^m (sum_(i=1)^n abs(a_(i j)))^2)^(1/2) <= sqrt(2) EE (abs(sum_(i=1)^m epsilon.alt_i (sum_(j=1)^n a_(i j)))) \
                                      &<= sqrt(2) EE (sum_(i=1)^m abs(sum_(j=1)^n epsilon.alt_i a_(i j))) <= sqrt(2) norm(A).
  $
]
#corollary(title: [La desigualdad de Littlewood $4 slash 3$])[
  Si $A in #M (RR)$ entonces $(sum_(i, j) abs(a_(i j))^(4/3))^(3/4) <= sqrt(2) norm(A)$.
]
#proof(
  )[
  Utilizamos la desigualdad de Hölder dos veces, primero con $p = 3$ y luego con $p = 3/2$ para obtener
  $
    sum_(i, j) abs(a_(i j))^(4/3) &= sum_(i)(sum_j abs(a_(i j))^(2/3) abs(a_(i j))^(2/3)) <= sum_(i)((sum_j abs(a_(i j))^2)^(1/3) (sum_j abs(a_(i j)))^(2/3)) \
                                  &= (sum_(i)(sum_j abs(a_(i j))^2)^(1/2))^(2/3) (sum_i (sum_j abs(a_(i j)))^(2))^(1/3) \
                                  &= (sum_i norm(a_i)_2 )^(2/3) (sum_i norm(a_i)_1^2)^(1/3) <= (sqrt(2) norm(A))^(2/3) (sqrt(2)^2(A)^2)^(1/3) = (sqrt(2) norm(A))^(4/3),
  $
  de donde obtenemos el resultado.
]

Definamos 
$
  g(A) &= sup {sum_(i=1)^m norm(sum_(j=1)^n a_(i j) k_j): k_j in H, norm(k_j) <= 1} \
       &= sup {abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i, k_j)): h_i, k_j in H, norm(h_i) <= 1, norm(k_j) <= 1},
$
donde $H$ es un e.H real o complejo. La igualdad se obtiene de una observación hecha por
@matrix_norms_related_to_grothendieck_inequality, notemos que 
$
  g(A) &= sup {abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i, k_j)): h_i, k_j in H, norm(h_i) <= 1, norm(k_j) <= 1} \
       &= sup {abs(sum_(i=1)^m ip(h_i, sum_(j=1)^n a_(i j) k_j)): h_i, k_j in H, norm(h_i) <= 1, norm(k_j) <= 1} \
       &<= sup {sum_(i=1)^m abs(ip(h_i, sum_(j=1)^n a_(i j) k_j)): h_i, k_j in H, norm(h_i) <= 1, norm(k_j) <= 1} \
       &<= sup {sum_(i=1)^m norm(h_i) norm(sum_(j=1)^n a_(i j) k_j): h_i, k_j in H, norm(h_i) <= 1, norm(k_j) <= 1} \
       &<= sup {sum_(i=1)^m norm(sum_(j=1)^n a_(i j) k_j): k_j in H, norm(k_j) <= 1}.
$
En cada desigualdad se puede obtener la igualdad de la siguiente manera. La ultima se obtiene cuando consideramos $norm(h_i) = 1$ para
todo $i$, la penúltima se debe a la desigualdad de Cauchy Schwarz cuya igualdad se alcanza cuando uno de los elementos
es múltiplo del otro, es decir $lambda_i h_i = sum_(j=1)^n a_(i j) k_j$#footnote(
  )[En este caso estamos considerando el caso real, pero en el caso complejo debemos considerar el conjugado. En cualquier
  caso no importa porque podríamos cambiar el orden de la suma para olvidarnos de la parte sesquilineal.], para $lambda >=0$.
Por lo anterior se sigue la primera igualdad pues los sumandos serian positivos.

#theorem(title: "Desigualdad de Grothendieck")[
  Existe una constante $C$, independiente de $m$ y $n$, tal que si $A in #M$ entonces $g(A) <= C norm(A)$.
] 
El menor valor de la constante $C$ se denota por $K_G$ y es conocida como la constante de Grothendieck. Un hecho
interesante sobre $K_G$ 
es que depende sobre que campo se este trabajando, $RR$ o $CC$. 

#proof[
  Sea
  $
    K_(m,n) = sup {g(A): A in #M, norm(A) <= 1}.
  $
  Si $norm(A) <= 1$ entonces $sum_(i=1)^m abs(a_(i j)) <= 1$, y por tanto $g(A) <= n$, queremos mostrar que existe una
  constante $C$, independiente de $m$ y $n$, tal que $K_(m, n) <= C$. Podemos suponer que $H$ es un e.H separable de
  dimension infinita. Como todos los espacios son isomorfos isometricamente, podemos suponer que $H$ es un e.H Gaussiano,
  un subespacio de $L^2(Omega, Sigma, bold(P))$ (Recordar que $H$ es un subespacio cerrado con la propiedad que si $h in H$ entonces $h$ tiene
  una normal, o Gaussiana, distribución con media $0$ y varianza $norm(h)_2^2$; tal espacio se obtiene de tomar el span
  lineal cerrado de una sucesión de variables aleatorias de Gaussianas estándares.) Las variables aleatorias $h_i$ y $k_j$ son
  entonces variables aleatorias no acotadas; la idea de la prueba es truncarlas a cierto nivel. Supongamos que $0 < delta < 1/2$.
  Existe $M$ t.q si $h in H$ y $norm(h)=1$ entonces $integral_(abs(h)>M) abs(h)^2 d#P = delta^2$. Si $h in H$, sea $h^M = h II_(abs(h) <= M norm(h))$.
  Entonces $norm(h -h^M) = delta norm(h)$. Si $norm(A) <= 1$ y $norm(h_i)_H <=1$, $norm(h_j)_H <= 1$ entonces, por la
  desigualdad del triangulo obtenemos que,
  $
    abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i, k_j)) &<= abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i^M, k_j^M)) \
                                                      &+ abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i - h_i^M, k_j^M)) \
                                                      &+ abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i, k_j - k_j^M)),
  $
  y notemos que,
  $
    abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i^M, k_j^M)) = abs(integral_Omega sum_(i=1)^m sum_(j=1)^n a_(i j) h_i^M (w) cls(k_j^M (w)) d#P (w)) <= M^2,
  $
  también notemos que,
  $
    abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i - h_i^M, k_j)) &= delta abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(1/delta (h_i - h_i^M), k_j)) \
                                                              &<= delta K_(m, n),
  $
  y, de manera análoga,
  $
    abs(sum_(i=1)^m sum_(j=1)^n a_(i j) ip(h_i, k_j - k_j^M)) <= delta K_(m, n),
  $
  Asi obtenemos que
  $
    K_(m, n) <= M^2 + 2delta K_(m, n), space "y" space K_(m, n) <= M^2 /(1-2delta).
  $
]

Los valores exactos son desconocidos pero se sabe que 
$1.338 <= K_G(CC) <= 1.405$, en 1985 @matrix_norms_related_to_grothendieck_inequality dio la mejor cota inferior $1.67696 <= k_G(RR)$, 
hasta entonces Krivine tenia la mejor cota superior $k_G(RR) <= pi/(2 log(1+sqrt(2))) = 1.7822$ y había conjeturado que esa era efectivamente el valor de 
$K_G(RR)$. Sin embargo en 2013 @braverman2011grothendieckconstantstrictlysmaller probo lo siguiente

#theorem()[
  Existe constante $epsilon.alt_0 >0$ t.q $K_G(RR) < pi/(2 log(1+sqrt(2))) - epsilon.alt_0$.
]

== Teorema de Grothendieck

El siguiente Teorema es el primero y la consecuencia de mayor importancia de la GI

#theorem(
  title: "Teorema de Grothendieck",
)[
  Si $T in L(L^1(Omega, Sigma, mu), H)$, donde $H$ es un e.H, entonces $T$ es absolutamente sumable y $pi_1 (T) <= K_G norm(T)$.
]

#proof(
  )[
  Por @thm:p-q-summing, es suficiente con considerar funciones simples $f_1, dots, f_n$ tales que
  $
    sup {norm(sum_(j=1)^n b_j f_j): abs(b_j) <= 1 } <= 1.
  $
  Como $f_j$ es simple, podemos escribirla como
  $
    f_j = sum_(i=1)^m c_(i j)#I _(A_i) = sum_(i=1)^m a_(i j) g_i,
  $
  donde $A_1, dots, A_m$ son conjuntos disjuntos de medida positiva, y donde $g_i = #I _(A_i) slash mu(A_i)$, de forma que $norm(g_i)_1 = 1$.
  Sea $h_i = T(g_i)$, de forma que $norm(h_i)_H <= norm(T)$. Entonces
  $
    sum_(j=1)^n norm(T(f_j))_H = sum_(j=1)^n norm(sum_(i=1)^m a_(i j) h_i)_H <= g(A) norm(T) <= K_G norm(A)norm(T),
  $
  donde $A$ es la matriz $(a_(i j))$. Pero si $abs(t_j) <= 1$ para $1 <= j <= n$ entonces
  $
    sum_(i=1)^m abs(sum_(j=1)^n a_(i j) t_j) = norm(sum_(j=1)^n t_j f_j)_1 <= 1,
  $
  de forma que $norm(A) <= 1$.
]

El Teorema de Grothendieck es esencialmente equivalente a la desigualdad de Grothendieck. Si suponemos que $pi_1 (S) <= K norm(S)$ para
todo $S in L(#l _1, H)$, y supongamos que $A in #M$. Si $h_1, dots, h_m$ estan en la bola unitaria de $H$, sea $S: #l _1->H$ definida
por $S(z) = sum_(i=1)^m z_i h_i$. Entonces $norm(S) <= 1$, de forma que $pi_1 (S T_A) <= pi_1 (S) norm(T_A) <= K norm(A)$.
Pero entonces 
$
  sum_(j=1)^n norm(sum_(i=1)^n a_(i j) h_i) &= sum_(j=1)^m norm(S T_A (e_j)) <= pi_1 (S T_A) sup { norm(sum_(j=1)^n b_j e_j)_infinity: abs(b_j) <= 1, "para" 1 <= j<=n} \
                                            &<=K norm(A)
$

=== Otra demostración del Teorema de Grothendieck

Ahora daremos una prueba directa del Teorema de Grothendieck para operadores en $L(l_1, H)$
Utiliza una desigualdad interesante de Paley. Si $ 1<=p < infinity$ entonces los espacios de Hardy definidos sobre el
disco unitario $#D = {z: abs(z) < 1}$.
$
  H^p = {f: f "es analítica en" #D, norm(f)_p = sup_(0<=r <1)(1/(2pi) integral_0^(2pi) abs(f(r e^(i theta)))^p d theta )^(1/p) < infinity },
$
y que 
$
  A(#D) = {f in C(cls(#D)): f "es analítica en" #D }.
$
Le damos a $A(#D)$ la norma del supremo. Si $f in H^p$ o $A(#D)$ podemos escribir a $f$ como $f(z) = sum_(n=0)^infinity hat(f)_n z^n$,
para $z in D$. Si $f in H^2$, entonces $norm(f)_(H^2) = (sum_(n=0)^infinity abs(hat(f)_n)^2)^(1/2)$

#theorem(title: [Desigualdad de Paley])[
  Si $f in H^1$ entonces
  $
    (sum_(k=0)^infinity abs(hat(f)_(2^k -1))^2)^(1/2) <= 2 norm(f)_1.
  $
]

#theorem(
  )[
  Si $y in l_2$, existe $f in A(D)$ con $norm(f)_infinity <= sqrt(e)norm(y)_2$ t.q $hat(f)_(2^k -1) = y_k$ para $k=0, 1, dots, $
]

Combinando los resultados anteriores podemos probar el Teorema de Grothendieck para $l_1$.

#theorem()[
  Si $T in L(l_1, l_2)$ entonces $T$ es absolutamente sumable y $pi_1 (T) <= 2 sqrt(e) norm(T)$.
]


== El pequeño Teorema de Grothendieck

El Teorema de Grothendieck se puede extender a espacios de medida. Para ello necesitamos el siguiente resultado.

#lemma(
  )[
  Supongamos que $K$ es un espacio Hausdorff compacto y que $phi.alt_1,dots, phi.alt_n in C(K)^*$. Entonces existe una
  medida de probabilidad $#P$ en los conjuntos de Baire de $K$ y $f_1, dots, f_n in L^1(#P)$ tales que $phi.alt_j = f_j d#P$ para
  cada $j$.
]

#theorem(
  )[
  Supongamos que $K$ es un espacio Hausdorff compacto. Si $T in L(C(K)^*, H)$, donde $H$ es un e.H, entonces $T$ es
  absolutamente sumable y $pi_1(T) <= K_G norm(T)$.
]

#corollary(
  title: [El pequeño Teorema de Grothendieck],
)[
  Si $T in L(C(K), H)$, donde $K$ es un espacio de Hausdorff compacto y $H$ un e.H, entonces $T in product_2 (C(K), H)$y $pi_2 (T) <= K_G norm(T)$.
]

==

#bibliography("biblio.yml")