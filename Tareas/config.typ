#import "@preview/ctheorems:1.1.3": thmbox, thmplain, thmrules, thmproof



#let proof = thmproof("proof", "Demostración", inset: (left: 0em))
#let sol = thmplain("solution", "Solución", inset: (left: 0em))
// The template setup
#let template(title, doc) = {
  show: thmrules.with(qed-symbol: $square$) 
  // latex-like setup
  set text(12pt, font: "New Computer Modern")
  set par(first-line-indent: 0em, justify: false)
  set par()

  show heading: set block(above: 1.4em, below: 1em)
  // set enum(numbering: "i)")
  set enum(numbering: n => [ #set text(style: "italic");#numbering("i)", n) ])
  show math.equation: set block(breakable: true)
  // title setup
  align(center)[

    #text(17pt)[ Análisis Funcional I ] \ // subject
    #text(15pt)[#title]

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

  // shortcuts
  show "e.m": [espacio métrico]
  show "e.B": [espacio de Banach]
  show "e.H": _ => [espacio de Hilbert]
  show "e.n": _ => [espacio normado]
  show "e.v": _ => [espacio vectorial]
  show "e.l": [espacio lineal]
  show "e.m": [espacio de medida]
  show "f.l": _ => [funcional lineal]
  show "o.l": _ => [operador lineal]
  show "m.l": _ =>[mapeo lineal]
  show "b.l.m": [mapeo lineal acotado]
  show "ssi": _ => [si y solo si]
  show "t.q": [tal que]
  // show "eps": [epsilon]

  doc
}

// My own exercise environment
#let e = counter("exercise")
#let exercise(label, body, number: none) = {
  set text(style: "italic")
  // label: of the problem in the book
  if number != none {
    e.update(number)
    // let problema = [*Problema  #label*]
  } else {
    e.step()
  }
  // let problema = [*Problema #e.display() #label*]
  box(
    width: 100%,
    stroke: 1pt,
    inset: 1em,
    [#text(size: 1.6em)[*Problema #context e.display()*] #text(blue)[ #label ] \  #body  ],
  )
}


#let ip(x, y) = $angle.l #x, #y angle.r$ // internal product
#let cls(S) = $overline(#S)$ // closure
#let conv(S) = $"conv"(#S)$ // convex hull
#let span(S, closed) = { if closed [$cls("span")(#S)$] else [$"span"(#S)$] }
#let int(S) = $"Int"(#S)$ // interior
#let eps = $epsilon$
#let wc = $attach(->, t: w)$ // weak convergence
#let wsc = $attach(->, t: w*)$ // weak star convergence
#let comp = $complement$