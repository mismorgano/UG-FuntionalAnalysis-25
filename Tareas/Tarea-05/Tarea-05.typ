#import "../config.typ": template, exercise, proof, sol

#show: template.with([Tarea 5])

#exercise[7A 2][
  Suponga que $a>=0 comma b>=0$, y $1 < p <infinity$. Demuestra que
  $ a b = a^p/p + b^q/q, $
  ssi $a^p = b^q$.
]
#proof[
  
]

#exercise[7A 3][
  Suponga que $a_1, dots, a_n$ son números no negativos. Prueba que
  $ (sum_(i=1)^n a_i)^5 <= n^4 (a_1^5 + dots.c + a_n^5) $
]
#proof[
  Por la desigualdad de Hölder tenemos que
  $ sum a_i <= (sum_(i=1)^n 1)^(4/5) (sum a_i^5)^(1/5) => (sum a_i)^5 <= n^5 (a_1^5 + dots.c + a_n^5) $
]

#exercise[7A 7][
  Supongamos que $(X, cal(S), mu)$ es un e.m y $f, h: X -> bold(F)$ son $cal(S)$-medibles. Prueba que $ norm(f h)_r <= norm(f)_p norm(h)_q, $
  para todos los números positivos $p,q, r$ tales que $1/p + 1/q = 1/r$.
]

#exercise[7A 8][
  Supongamos que $(X, cal(S), mu)$ es un e.m y $n in ZZ^+$. Prueba que
  $norm(product f_i)_1 <= product norm(f_i)_(p_i), $
  para todos los números positivos $p_1, dots, p_n$ tales que $ sum 1/p_i = 1$ y todas la funciones $cal(S)$-medibles $f_1, f_2, dots, f_n:X->bold(F)$.
]

#exercise[7A 10][
  Supongamos que $ 0 <p < q<= infinity$.
  + Prueba que $cal(l)^p subset cal(l)^q$.
  + Prueba que $norm({a_n}_n)_p >= norm({a_n}_n)_q$ para toda sucesión ${a_n}_n subset bold(F)$.
]

#exercise[7A 11][
  Demuestra que: $ sect.big_(p>1) cal(l)^p != cal(l)^1 . $
]

#exercise[7A 12][
  Muestra que $ sect.big_(p<infinity) cal(L)^p ([0, 1]) != cal(L)^infinity ([0, 1]). $
]
#proof[
  Dado que una función _esencialmente acotada_ (en $[0, 1]$) es $cal(L)^p$ integrable para todo $ 0 < p< infinity$
  (en [0, 1]), se cumple que $sect.big_(p<infinity) cal(L)^p ([0, 1]) supset cal(L)^infinity ([0, 1])$, por lo que para
  ver que no se da la igualdad mostraremos una función $cal(L)^p ([0, 1])$ integrable para todo $ 0 < p< infinity$
  tal que no sea _esencialmente acotada_ en $[0, 1]$.

  Para ello consideremos $f:[0, 1] -> RR$ dada por 
  $ f(x) =  cases(-log(x) "si" x in (0, 1] comma, 0 "si no".) $
  VEamos que $- log(x) <= 1/x$ para todo $x in (0, infinity)$, en especial para $x in (0, 1)$ se cumple que 
  $ - log(x) <= 1/x <=>  $

] 

#exercise[7A 13][
  Demuestra que $ union.big_(p>1) cal(L)^p ([0, 1]) != cal(L)^1 ([0, 1]). $
]

#exercise[7A 14][
  Supongamos que $p, q in (0, infinity]$, con $p!=q$. Prueba que niguno de los conjuntos $cal(L)^p (RR)$ y $cal(L)^q (RR)$ es
  subconjunto del otro.
]

#exercise[7A 15][
  Muestra que existe $f in cal(L)^2 (RR)$ tal que $f in.not cal(L)^p (RR) $ para todo $p in (0, infinity]without{2}$.
]