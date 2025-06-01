#import "@preview/touying:0.6.1": *
#import "@preview/equate:0.3.1": *
#import themes.university: *

#show: university-theme.with(aspect-ratio: "4-3", config-info(
  title: [La desigualdad de Grothendieck],
  subtitle: [Análisis Funcional I],
  author: [Antonio Barragán Romero],
  institution: [Universidad de Guanajuato],
))


#title-slide(authors: grid(columns: (1fr, 1fr), align(center)[
  Maite Fernández Unzueta. \
  #link("mailto:maite@cimat.mx")
], align(center)[
  Antonio Barragán Romero. \
  #link("mailto:antonio.barragan@cimat.mx")
]))

#set text(lang: "es")
#show par: set text(size: 16pt)
#show math.equation: set text(size: 16pt)
#show bibliography: set text(size: 16pt)
#set cite(style: "alphanumeric", form: "prose")


= Abstract

El objetivo de esta presentación es dar una breve introducción a la desigualdad de Grothendieck, un poco de historia,
demostración, consecuencias, su importancia y aplicaciones (Para tratar de entenderla). La referencia principal es
@Garling_2007.


== Introducción

#let M = $M_(m, n)$
#let l = $cal(l)$
#let L = $cal(L)$


Vamos a considerar desigualdades entre normas en el espacio $#M (RR)$ or $#M (CC)$ de matrices $m times n$ reales o
complejas.

Supongamos que $A = (a_(i j)) in #M$. Nuestro principal objeto de estudio sera la norma
$
  norm(A) &= sup {sum_(i=1)^m abs(sum_(j=1)^n a_(i j) t_j): abs(t_j) <= 1} = sup {sum_(i=1)^m abs(sum_(j=1)^n ): norm(t)_infinity <= 1} \
          &= sup {sum_(i=1)^m abs(sum_(j=1)^n a_(i j) s_i t_j): abs(s_i) <= 1,  abs(t_j) <= 1} = sup {sum_(i=1)^m abs(sum_(j=1)^n a_(i j) s_i t_j): abs(s_i) <= 1,  abs(t_j) <= 1}
$

Notar que $norm(A)$ es simplemente es la norma del operador $T_A: #l^infinity_n -> #l^1_m$

==

#bibliography("biblio.yml")