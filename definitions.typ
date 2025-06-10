
#let apply_definitions(doc) = {
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

  // change look of less equal and greater equal
  show math.lt.eq : math.lt.slant
  show math.gt.eq: math.gt.slant

  doc
}