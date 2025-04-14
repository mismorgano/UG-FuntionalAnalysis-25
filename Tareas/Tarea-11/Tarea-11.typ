#import "../config.typ": template, exercise, proof, lemma
#import "../config.typ": ip, cls
#show: template.with(title: [Tarea 11], subtitle: [Series de Fourier])

#exercise[
  + Considera el subconjunto $M subset cal(l)^2$ siguiente:
    $
      M := { x = (x_i) in cal(l)^2: sum_(i=1)^infinity x_i = 0}.
    $
    Demuestra que $M$ es un subespacio vectorial no cerrado y denso.

  + Da una pequeña introducción a las wavelets y dinos si en algunos casos forman una base ortonormal de un e.H.
]

#exercise[
  + Prueba que el conjunto $M subset cal(l)^2$ del ejercicio anterior cumple que:
    $
      M plus.circle M^perp subset.neq cal(l)^2
    $

  + Define dentro de lo posible lo que es el análisis armónico y su relación con los espacios de Hilbert.
]
Primero probaremos el siguiente lema 
#lemma[
  Si $H = M plus.circle N$ y $M$ es un subespacio cerrado y $M perp N$ entonces $N = M^perp.$
  #proof[
    Como $M$ es un subespacio cerrado, por el Teorema de la proyección ortogonal tenemos que
  ]
]

Siguiendo con el problema.
+ #proof[
    Supongamos que $M plus.circle M^perp = cal(l)^2$ entonces como $M^perp$ es un subespacio
    cerrado y por definición $M^perp perp M$ entonces obtendríamos que $M = (M^perp)^perp$ lo cual no es posible pues $M$ no
    es cerrado pero
    $(M^perp)^perp$ si.
  ]
+ 

#exercise[
  + Encuentra un conjunto $N subset cal(l)^2$ cerrado de modo que no exista ningún elemento en él de norma minima.

  + Da una aplicación de las series de Fourier
]

#exercise[
  + Sea $X = C([0, 1])$ y $f(t) = 1 -t^2$. Demuestra que la mejor aproximación de $f$ al subespacio generado por ${1, cos(pi t)}$
    es $2/3 + 4/pi^2 cos(pi t)$.

  + Explica el origen histórico de las series de Fourier.
]

#exercise[
  + Sea ${c_k}_k$ una sucesión ortonormal en un e.H $H$. Si ${c_k}_k$ es una sucesión de números positivos tales que $sum_(k=1)^infinity c_k^2 < infinity$,
    entonces el conjunto
    $
      A := { sum_(k=1)^infinity a_k c_k: abs(a_k) <= c_k},
    $
    es un conjunto compacto.

  + Prueba que el sistema ortonormal que genera a los polinomios trigonométricos (como los vimos en clase) es base.
]


