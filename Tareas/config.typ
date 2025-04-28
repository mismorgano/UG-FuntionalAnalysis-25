#import "@preview/ctheorems:1.1.3": thmbox, thmplain, thmrules, thmproof
#import "@preview/ctheorems:1.1.3"


#let proof = thmproof("proof", "Demostración", inset: (left: 0em))
#let sol = thmplain("solution", "Solución", inset: (left: 0em)).with(numbering: none)
#let lemma = thmplain("lemma", "Lema", inset: (left: 0em), base: none, titlefmt: strong)


// The template setup
#let template(title: [], subtitle: [], doc) = {
  show: thmrules.with(qed-symbol: $square$) 
  // latex-like setup
  set text(size: 12pt, font: "New Computer Modern", lang: "es")
  set par(first-line-indent: 1.2em, justify: true, leading: 0.55em, spacing: 0.75em)

  show heading: set block(above: 1.4em, below: 1em)
  // set enum(numbering: "i)")
  set enum(numbering: n => [ #set text(style: "italic");#numbering("i)", n) ])
  show math.equation: set block(breakable: true)

  // page setup
  set page(header: context {
    if counter(page).get().first() > 1 [
      _Licenciatura en Matemáticas_
      #h(1fr)
      _Análisis Funcional I_
      #line(length: 100%)
    ]
  }, numbering: "1/1")

  // title setup
  align(center)[

    #text(19pt)[ _*Análisis Funcional I*_ ] \ // subject
    #text(17pt)[#title] \
    #text(15pt)[#subtitle]

    #text(12pt)[
      #grid(columns: (1fr, 1fr), align(center)[
        Maite Fernández Unzueta. \
        #link("mailto:maite@cimat.mx")
      ], align(center)[
        Antonio Barragán Romero. \
        #link("mailto:antonio.barragan@cimat.mx")
      ])
    ]

  ]
  line(length: 100%)

  // shortcuts
  show "e.m": [espacio métrico]
  show "e.B": [espacio de Banach]
  show "e.H": _ => [espacio de Hilbert]
  show "e.n": _ => [espacio normado]
  show "e.v": _ => [espacio vectorial]
  show "e.v.n":_ => [e.v normado]
  show "e.l": [espacio lineal]
  show "m.e": [espacio de medida]
  show "f.l": _ => [funcional lineal]
  show "o.l": _ => [operador lineal]
  show "m.l": _ =>[mapeo lineal]
  show "m.l.a": _ => [m.l acotado]
  show "b.l.m": [mapeo lineal acotado]
  show "b.l.o": [operador lineal acotado]
  show "ssi": _ => [si y solo si]
  show "t.q": [tal que]
  show "s.C": [sucesión de Cauchy]
  show "p.i": [producto interno]

  // show "eps": $epsilon$

  // change look of less equal and greater equal
  show math.lt.eq : math.lt.slant
  show math.gt.eq: math.gt.slant

  doc
}

// exercise environment
#let exercise = thmbox("exercise", "Problema", base: none, separator: [\ ], stroke: 1pt, titlefmt: it => 
text(style: "italic", size: 1.6em)[#it], namefmt: it => 
text(style: "italic", blue)[#it], bodyfmt: it => 
text(style: "italic")[#it])

#let ip(x, y) = $angle.l #x, #y angle.r$ // internal product
#let cls(S) = $overline(#S)$ // closure
#let conv(S) = $"conv"(#S)$ // convex hull
#let span(S, closed) = { if closed [$cls("span")(#S)$] else [$"span"(#S)$] }
#let int(S) = $"Int"(#S)$ // interior
#let eps = $epsilon$
#let wc = $attach(->, t: w)$ // weak convergence
#let wsc = $attach(->, t: w*)$ // weak star convergence
#let comp = $complement$