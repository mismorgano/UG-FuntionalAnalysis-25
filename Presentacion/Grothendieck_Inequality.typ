#import "@preview/touying:0.6.1": *

#import themes.university: *

#show: university-theme.with(aspect-ratio: "4-3", config-info(
  title: [La desigualdad de Grothendieck],
  subtitle: [Análisis Funcional I],
  author: grid(columns: (1fr, 1fr), align(center)[
    Maite Fernández Unzueta. \
    #link("mailto:maite@cimat.mx")
  ], align(center)[
    Antonio Barragán Romero. \
    #link("mailto:antonio.barragan@cimat.mx")
  ]),
  institution: [Universidad de Guanajuato],
))


#title-slide()

#set text(lang: "es")
#show par: set text(size: 16pt)
#set cite(style: "alphanumeric", form: "prose")


= Abstract

El objetivo de esta presentación es dar una breve introducción a la desigualdad de Grothendieck, un poco de historia,
demostración, consecuencias, su importancia y aplicaciones (Para tratar de entenderla). La referencia principal es
@Garling_2007.


== 
#bibliography("biblio.yml")