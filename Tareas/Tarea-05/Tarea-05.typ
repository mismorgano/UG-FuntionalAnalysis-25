#import "../config.typ": template, exercise, proof, sol

#show: template.with(title: [Tarea 5])

#exercise[7A 2][
  Suponga que $a>=0 comma b>=0$, y $1 < p <infinity$. Demuestra que
  $ a b = a^p/p + b^q/q, $
  ssi $a^p = b^q$, donde $q$ es el exponente dual de $p$.
]
#proof[
  Si $a$ ó $b$ son cero, la desigualdad es clara, asi que supongamos que ninguno es cero. Dado que la función $f(t) = e^t$ es
  estrictamente convexa pues $f''(t) = e^t >0$, se cumple que $ e^(1/p x + 1/q y ) <= 1/p e^(x) + 1/q e^(y), $
  con igualdad ssi $x = y$. Luego, para $x = p ln(a) , y= q ln(b) $, se cumple que
  $ a b = e^(1/p (p ln(a)) + 1/q (q ln(y))) <= 1/p e^(p ln(a)) + 1/q e^(q ln(b)) = 1/p a^p + 1/q b^q, $
  con igualdad ssi $p ln(a) = q ln(b)$, es decir ssi $a^p = b^q$, como queremos.
]

#exercise[7A 3][
  Suponga que $a_1, dots, a_n$ son números no negativos. Prueba que
  $ (sum_(i=1)^n a_i)^5 <= n^4 (a_1^5 + dots.c + a_n^5) $
]
#proof[
  Notemos que $5$ es el exponente dual de $5/4$, por lo tanto por la desigualdad de Hölder tenemos que
  $ sum_(i=1)^n a_i= sum_(i=1)^n 1 dot a_i &<= (sum_(i=1)^n 1^(5/4))^(4/5) (sum_(i=1)^n a_i^5)^(1/5) \
                                         &= n^(4/5) (sum_(i=1)^n a_i^5)^(1/5), $
  se sigue que $ (sum_(i=1)^n a_i)^5 <= n^4 (a_1^5 + dots.c + a_n^5), $
  como queremos.
]

#exercise[7A 7][
  Supongamos que $(X, cal(S), mu)$ es un e.m y $f, h: X -> bold(F)$ son $cal(S)$-medibles. Prueba que $ norm(f h)_r <= norm(f)_p norm(h)_q, $
  para todos los números positivos $p,q, r$ tales que $1/p + 1/q = 1/r$.
]
#proof[
  Primero notemos que como $f, h$ son $cal(F)$-medibles entonces $abs(f)^r$ y $abs(h)^r$ también lo son. Luego, de la
  hipótesis de que $1/p + 1/q = 1/r$ obtenemos que
  $ 1/(p/r) + 1/(q/r) =1, $
  y ademas $r(p +q) = p q$, de donde se deduce que $p q > r p$ y que $p q > r q$ pues $r p, r q >0$, lo cual implica que $q > r$ y $p>r$ pues $p, q$ son
  positivos y por tanto $q/r > 1$ y $p/r >1$, pues $r$ es positivo. Lo anterior no dice que podemos usar la desigualdad de
  Hölder sobre $abs(f)^r, abs(h)^r$, con $p/r$ y $q/r$ para obtener que
  $
    integral abs(f h)^r d mu =integral abs(abs(f)^r abs(h)^r) d mu &<= ( integral abs(abs(f)^r)^(p/r) d mu)^(1/(p/r)) ( integral abs(abs(h)^r)^(q/r) d mu)^(1/(q/r)) \
                                                                   &= (integral abs(f)^p d mu)^(r/p) (integral abs(h)^q d mu)^(r/q),
  $
  de donde, al elevar lo anterior a $1/r$, obtenemos que
  $
    (integral abs(f h)^r d mu)^(1/r) <= (integral abs(f)^p d mu)^(1/p) (integral abs(h)^q d mu)^(1/q),
  $
  es decir, $ norm(f h)_r <= norm(f)_p norm(h)_q$, como queremos.
]

#exercise[7A 8][
  Supongamos que $(X, cal(S), mu)$ es un e.m y $n in ZZ^+$. Prueba que
  $ norm(product_(i=1)^n f_i)_1 <= product_(i=1)^n norm(f_i)_(p_i), $
  para todos los números positivos $p_1, dots, p_n$ tales que $ sum_(i=1)^n 1/p_i = 1$ y todas la funciones $cal(S)$-medibles $f_1, f_2, dots, f_n:X->bold(F)$.
]
#proof[

]

#exercise[7A 10][
  Supongamos que $ 0 <p < q<= infinity$.
  + Prueba que $cal(l)^p subset cal(l)^q$.
  + Prueba que $norm({a_n}_n)_p >= norm({a_n}_n)_q$ para toda sucesión ${a_n}_n subset bold(F)$.
]
+ #proof[
    Dada ${x_n}_n in cal(l)^p$, se cumple que $sum_(n=1)^infinity abs(x_n)^p < infinity$, lo cual implica que $abs(x_n)^p -> 0$,
    es decir, ${abs(x_n)^p}_n$ es convergente y por tanto es acotada, se sigue que ${abs(x_n)}_n$ es acotada y en
    consecuencia ${x_n}_n in cal(l)^infinity$, de modo que $cal(l)^p subset cal(l)^infinity$.

    Como $abs(x_n)^p -> 0$ entonces existe $N in NN$ t.q $abs(x_n)^p < 1$ para $n >= N$, como $q>p$ se sigue que $abs(x_n)^q < abs(x_n)^p$ para
    todo $n>=N$. Dado que $sum_(n=1)^infinity abs(x_n)^p < infinity$ , se sigue que $sum_(n=N)^infinity abs(x_n)^q <= sum_(n=N)^infinity abs(x_n)^p < infinity$,
    lo cual implica que $sum_(n=1)^infinity abs(x_n)^q < infinity$, pues $sum_(n=1)^(N-1) abs(x_n)^q < infinity$, es decir ${x_n}_n in cal(l)^q$
    y por tanto $cal(l)^p subset cal(l)^q$.

  ]
+ #proof[
    Dado ${a_n}_n subset bold(F)$, sea $alpha = norm({a_n}_n)_p$ y notemos que
    $ (sum_(n=1)^infinity abs(a_n/ alpha)^q)^1/q = 1/alpha norm({a_n}) = 1, $
    entonces $sum_(n=1)^infinity abs(x_n/alpha)^p =1$ lo cual implica que $abs(x_n/alpha) <=1$ para todo $n in NN$. Dado que $q>p$ se
    cumple que $abs(x_n/alpha)^q <= abs(x_n/alpha)^p$ para todo $n in NN$, por lo cual
    $ sum_(n=1)^infinity abs(x_n/alpha)^q <= sum_(n=1)^infinity abs(x_n/alpha)^p =1, $
  ]

#exercise[7A 11][
  Demuestra que: $ inter.big_(p>1) cal(l)^p != cal(l)^1 . $
]
#proof[
  Consideremos ${1/n}_n subset bold(F)$, dado $1<p<infinity$ sabemos que $sum_(n=1)^infinity 1/n ^p$ converge, y por tanto ${1/n}_n in cal(l)^p$.
  Mas aun, es claro que ${1/n}_n$ esta acotada, y por tanto ${1/n}_n in cal(l)^infinity$. De lo anterior vemos que
  $
    {1/n}_n in inter.big_(p>1) cal(l)^p,
  $
  sin embargo, sabemos que $sum_(n=1)^infinity 1/n $ diverge, es decir , ${1/n}_n in.not cal(l)^1$, y por tanto no se
  puede dar la igualdad.
]

#exercise[7A 12][
  Muestra que $ inter.big_(p<infinity) cal(L)^p ([0, 1]) != cal(L)^infinity ([0, 1]). $
]
#proof[
  Dado que una función _esencialmente acotada_ (en $[0, 1]$) es $cal(L)^p$ integrable para todo $ 0 < p< infinity$
  (en [0, 1]), se cumple que $inter.big_(p<infinity) cal(L)^p ([0, 1]) supset cal(L)^infinity ([0, 1])$, por lo que para
  ver que no se da la igualdad mostraremos una función $cal(L)^p ([0, 1])$ integrable para todo $ 0 < p< infinity$
  tal que no sea _esencialmente acotada_ en $[0, 1]$.

  Para ello consideremos $f:[0, 1] -> RR$ dada por
  $ f(x) = cases(-log(x) "si" x in (0, 1] comma, 0 "si no".) $
  VEamos que $- log(x) <= 1/x$ para todo $x in (0, infinity)$, en especial para $x in (0, 1)$ se cumple que
  $ - log(x) <= 1/x <=> $

] 

#exercise[7A 13][
  Demuestra que $ union.big_(p>1) cal(L)^p ([0, 1]) != cal(L)^1 ([0, 1]). $
]
#proof[
  Consideremos la siguiente función
]

#exercise[7A 14][
  Supongamos que $p, q in (0, infinity]$, con $p!=q$. Prueba que niguno de los conjuntos $cal(L)^p (RR)$ y $cal(L)^q (RR)$ es
  subconjunto del otro.
]
#proof[

]

#exercise[7A 15][
  Muestra que existe $f in cal(L)^2 (RR)$ tal que $f in.not cal(L)^p (RR) $ para todo $p in (0, infinity]without{2}$.
]

