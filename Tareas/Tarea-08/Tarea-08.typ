#import "../config.typ": *

#show: template.with([Tarea 8 ], [Operadores lineales acotados I])

#exercise[ 
  Sean $X, Y$ espacios normados y $T:X->Y$ lineal. Prueba que $T$ no es acotado ssi existe una sucesión ${x_n}_n subset X$ tal
  que $norm(x_n)->0$ y $norm(T(x_n)) =1$ para toda $n in NN$.
]

#exercise[
  #let X = $C[0, 1]$
  Demuestra que los siguientes operadores lineales son continuos y calcula su norma
  + $T:#X -> #X$ definido como $T(x(t)) := integral_0^1 x(tau) d tau.$

  + $T:#X -> #X$ definido como $T(x(t)) := t^2x(0).$
  + $T:cal(l)_1 -> cal(l)_1$ definido como $T((x_1, x_2, dots)) = (0, x_1, x_2, dots).$
]

#exercise[
  Sea $X$ un e.B, $Y$ un e.n y $T in cal(L)(X, Y)$
  + Si $T$ es isomorfismo y $T^(-1)$ es continuo, prueba que $Y$ es completo.
  + Si $T$ preserva abiertos, prueba que $Y$ es completo.
]

#exercise[
  Comprueba con el siguiente ejemplo, que la hipótesis de completitud del espacio es necesaria para el *Principio de
  Acotamiento Uniforme*. 
  Justificalo usando los siguientes operadores: sea $X := c_00$ el espacio de la sucesiones
  eventualmente cero con la norma del supremo y los operadores definidos en él:
  $
    T_k: c_00 -> RR; quad T lr(((x_n)), size: #50%) = sum_(n=1)^k x_n
  $
]

#exercise[
  Prueba el siguiente resultado
  + Si $Z subset X$ es un subespacio cerrado entonces la aplicación cociente
    $
      Q: X -> X slash Z
    $
    es continua y abierta.
  + Sea $T:X -> Y$ una transformación lineal tal que $ker T subset X$ es cerrado. Sea $cls(T)$ la transformación inducida
    por el cociente
    $
      cls(T): X slash ker T -> Y,
    $
    dada por $cls(T)([x]) = T(x)$. Entonces $T$ es abierta si y solo si $cls(T)$ es abierta.
]

