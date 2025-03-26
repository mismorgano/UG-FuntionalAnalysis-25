#import "../config.typ": template, exercise, proof
#import "../config.typ": ip, cls
#show: template.with(title: [Tarea 10], subtitle: "Polinomios Ortogonales")


En los ejercicios del 2 al 5, y si es posible también en el 1, añade un inciso en el que expliques el origen histórico y
alguna de las aplicaciones mas importantes de la familia de polinomios ortogonales del ejercicio correspondiente.
#exercise[
  #let vphi = $phi.alt$
  Define formalmente una familia de polinomios ortogonales ${phi.alt_n (x)}_n$ con respecto a un p.i $ip(dot, dot)$
  en un intervalo $[a, b]$ y demuestra que:
  + Los polinomios son únicos salvo factores multiplicativos.
  + Satisfacen una relación de recurrencia de tres términos:
    $
      vphi_(n+1) (x) = (A_n x + B_n)vphi _n (x) - C_n vphi _(n-1)(x)
    $
  + Las raíces de $vphi_n$ son reales, simples y están en $[a, b]$.
]

#exercise[ Polinomios de Legendre ][
  Los Polinomios de Legendre $P_n (x)$ son ortogonales en $[-1, 1]$ con peso $w(x)=1$.
  + Construye los primeros tres polinomios $(P_0, P_1, P_2)$ usando el proceso de Gram-Schmidt sobre ${1, x, x^2}$
  + Verifica que satisfacen la ecuación diferencial:
    $
      (1-x^2)P''_n (x) -2x P'_n (x) + n(n+1) P_n (x) =0.
    $
  + Calcula $display(integral_(-1)^1 P_2 (x) P_3 (x) d x)$ sin integrar directamente.
]

#exercise[Polinomios de Chebyshev (Tipo I)][
  Los polinomios de Chebyshev $T_n (x)$ son ortogonales en $[-1, 1]$ con peso $w(x) = 1/(sqrt(1-x^2))$.
  + Demuestra que $T_n (x) = cos (n arccos x)$ satisface la ortogonalidad:
    $
      integral_(-1)^1 (T_n (x) T_m (x))/(sqrt(1- x^2)) d x = 0, quad "si" n != m.
    $
  + Encuentra la relación de recurrencia:
    $
      T_(n+1) (x) = 2x T_n (x) - T_(n-1)(x).
    $
  + Usa esta recurrencia para hallar $T_3 (x)$.
]

#exercise[Polinomios de Hermite][
  Los polinomios de Hermite $H_n(x)$ son ortogonales en $(-infinity, infinity)$ con peso $w(x) = e^(-x^2)$.
  + Prueba que se pueden definir mediante la formula de Rodriguez:
    $
      H_n (x) = (-1)^n e^(-x^2) d^n/(d x^n) (e^(-x^2)).
    $
  + Verifica que $H_0 (x) =1$, $H_1 (x) = 2x$ y calcula $H_2 (x)$.
  + Demuestra que satisfacen la ecuación diferencial:
    $
      H''_n (x) - 2x H'_n (x) + 2n H_n (x) = 0.
    $
]

#exercise[Polinomios de Laguerre][
  Los polinomios de Laguerre $L_n (x)$ son ortogonales en $[0, infinity)$ con peso $w(x) = e^(-x)$.
  + Construya $L_0 (x), L_1 (x)$ y $L_2 (x)$ usando la ortogonalización de Gram-Schmidt sobre ${1, x, x^2}$.
  + Demuestra que cumplen lla ecuación diferencial:
    $
      x L''_n (x) + (1-x)L'_n (x) + n L_n (x) = 0.
    $
  + Muestra que $display(ip(L_1, L_2) = integral_0^infinity e^(-x) L_1 (x) L_2 (x) d x)$.
]

