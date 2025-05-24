#import "../config.typ": template, exercise, proof, sol, lemma 
#import "../config.typ": ip, cls, span
#show: template.with(title: [Tarea 14], subtitle: [Teoría espectral de operadores lineales continuos])

#set cite(style: "alphanumeric", form: "prose")

#let X = $C([0, 1])$
#let l = $cal(l)$
#let L = $cal(L)$

#exercise[@kreyszig 7.3 1][
  Sea $X = #X$ y define $T:X->X$ por $T(x) = v x$, donde $v in X$ esta fijo. Encuentra $sigma(T)$. Notar que $sigma(T)$ es
  cerrado.
]

#exercise[@kreyszig 7.3 2][ 
  Encuentra un o.l $T:#X -> #X$ cuyo espectro sea un intervalo $[a, b]$ dado.
]

#exercise[@kreyszig 7.3 4][
  Sea $T:#l^2->#l^2$ definida como $y = T(x)$, $x = (xi_j)$, $y=(nu_j)$, $nu_j = alpha_j xi_j$, donde $(alpha_j)$ es denso
  en $[0, 1]$. Encuentra $sigma_p (T)$ y $sigma(T)$.
]

#exercise[@kreyszig 7.3 7][
  Sea $T in cal(B)(X, X)$. Muestre que $norm(R_lambda (T)) -> 0$ cuando $lambda -> infinity$.
]

#exercise[@kreyszig 7.4 3][
  Si $S, T in cal(B)(X, X)$, muestra que para cualquier $lambda in rho(S) inter rho(T)$,
  $
    R_lambda (S) - R_lambda (T) = R_lambda (S)(T-S) R_lambda (T).
  $
]

#exercise[@kreyszig 7.4 4][
  Sea $X$ un e.B complejo, $T in cal(B)(X, X)$ y $p$ un poliomio. Muestre que la ecuación
  $
    p(T) x = y,
  $
  tiene solución única $x$ para todo $y in X$ ssi $p(lambda) != 0$ para todo $lambda in sigma(T)$.
]

#exercise[@kreyszig 7.5 1 (operador nilpotente)][
  Un o.l $T$ se dice que es _nilpotente_ si existe $m in NN$ t.q $T^m=0$. Encuentra el espectro de un operador nilpotente $T: X -> X$
  sobre un e.B complejo $X != {0}$.
]

#exercise[@kreyszig 7.5 3][
  Determina $(A - lambda I)^-1$ donde $A$ es la siguiente matriz (Usa que $A^2 = I$.)
  $
    A = mat(delim: "[", 0, 1, 0;1, 0, 0;0, 0, 1).
  $
]

#exercise[@kreyszig 7.5 8 (desigualdad de Schur)][
  Sea $A = (a_(j k))$ una matriz cuadrada de $n$ filas y sean $lambda_1, dots, lambda_n$ sus valores propio. Entonces se
  puede demostrar que se cumple la desigualdad de Schur
  $
    sum_(i=1)^n abs(lambda_i)^2 <= sum_(j=1) sum_(k=1) abs(a_(j k))^2,
  $
  donde la igualdad se alcanza ssi $A$ es normal. Deriva una cota superior para el radio espectral de $A$ de esta
  desigualdad.
]

#bibliography("../biblio.yml")