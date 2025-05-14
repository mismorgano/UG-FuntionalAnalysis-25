
#import "../config.typ": template, exercise, proof, sol, lemma 
#import "../config.typ": ip, cls
#show: template.with(title: [Tarea 13], subtitle: [Operadores Adjuntos])

#set cite(style: "alphanumeric", form: "prose")

#let M = $cal(M)$
#let l = $cal(l)$
#let L = $cal(L)$
#exercise[
  Considera una matrix $A in #M _(m n)$ y el operador $T:CC^m -> CC^n$ asociado. Demuestra que la matrix transpuesta
  $A^t in #M _(n m)$ es la matriz asociada al operador transpuesto $T^*$.
]

#exercise[
  Demuestra que la identidad $id: cal(l)^1 -> #l^2$ es un operador continuo e inyectivo pero $T^*(#l^2)$ no es
  sobreyectivo.
]

#exercise[
  Prueba que $T:#l^2 -> #l^2$ definido como $T((x_n)_n) = (x_n / 2)_n$ es compacto.
]

#exercise[
  Sean $X, Y$ espacios normados de dimensión $m$ y $n$, respectivamente. Si $U:X -> Y$ es un o.l cuya matriz asociada en
  las bases prefijadas $(e_k)_(k=1, dots, m), (v_j)_(j=1, dots, n)$ es $(a_(j, k))_(j =1, dots, n \ k=1, dots, m)$.
  + Calcula su norma como operador de $#l^infinity_m $ en $ #l^infinity_n$.
  + Calcula su norma como operador de $#l^1_m$ en $#l^1_n$.
]

#exercise[
  Prueba que el funcional $phi: #L^p ([0, 1]) -> RR$ definido como $phi(f) = integral_0^1 f(x) d x$ es continuo y calcula
  su norma.
]

#exercise[
  Sea $T:X -> Y$ una aplicación lineal entre dos espacios normados. Prueba que $T$ es continua ssi para cada sucesión
  acotada $(x_n)_n subset X$, la sucesión $(T(x_n))_n subset Y$ es acotada.
]

#exercise[
  Dados los puntos $t_1, dots, t_n$ en el intervalo $[a, b]$, calcula la norma del funcional $phi: C([a, b]) -> RR$ definido
  por
  $phi(f) = sum_(k=1)^n c_k f(t_k), f in C([a, b])$.
]

#exercise[
  Sea $X$ un e.B y $T in cal(K)(X)$. Entonces $ker(I - T)$ tiene dimensión finita.
]

#exercise[
  Sean ${x_1, dots, x_n}$ vectores linealmente independientes en un e.n $X$ y sean ${alpha_1, dots, alpha_n } subset CC$.
  Prueba que existe un f.l continuo, $x^* in X^*$, t.q $x^*(x_i) = alpha_i, i =1, dots, n$.
]


#exercise[
  #let X = $C([0, 1])$
  Sean $T: #X -> #X$ el operador definido como $T(f)(x) := integral_0^x f(t)d t$. Demuestra que:
  + $T$ es compacto.
  + $sigma(T) = {0}$.
  + $sigma_p (T) = emptyset$.
]