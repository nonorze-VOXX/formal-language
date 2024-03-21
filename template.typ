#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "TeX Gyre Termes", lang: "en")

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)

  let enum_levels = ("1.", "(a)")
  let enum_depth = state("enum_depth", 0)

  show enum: it => {
    locate(loc => {
      let depth = enum_depth.at(loc)
      set enum(numbering: enum_levels.at(depth))

      enum_depth.update(x => x + 1)
      it
      enum_depth.update(x => x - 1)
    })
  }

  body
}
