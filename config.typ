#import "./sections/cover.typ": cover
#import "@preview/zebraw:0.5.5": *
#import "@preview/ansi-render:0.8.0": (
  ansi-render as __ansi-render, terminal-themes,
)

#let ansi-render = __ansi-render.with(
  font: "CaskaydiaCove NF",
  inset: 5pt,
  radius: 2pt,
  width: 100%,
  theme: (
    black: rgb("#1d1f21"),
    red: rgb("#cc6666"),
    green: rgb("#b5bd68"),
    yellow: rgb("#f0c674"),
    blue: rgb("#81a2be"),
    magenta: rgb("#b294bb"),
    cyan: rgb("#8abeb7"),
    white: rgb("#c5c8c6"),
    gray: rgb("#969896"),
    bright-red: rgb("#cc3333"),
    bright-green: rgb("#b5bd68"),
    bright-yellow: rgb("#f0c674"),
    bright-blue: rgb("#81a2be"),
    bright-magenta: rgb("#b294bb"),
    bright-cyan: rgb("#8abeb7"),
    bright-white: rgb("#ffffff"),
    default-fg: rgb("#1d1f21"),
    default-bg: rgb("#F8F8F8"),
  ),
)

#let frame(stroke) = (x, y) => (
  left: none,
  right: none,
  top: if y < 2 { stroke + 0.7pt } else { 0pt },
  bottom: stroke + 0.7pt,
)

#let config(doc, ramo) = {
  let color1 = black
  let colorbg = white
  set page(
    paper: "us-letter",
    margin: (
      left: 3cm,
      right: 2.5cm,
      top: 2.5cm,
      bottom: 3.5cm,
    ),
    fill: colorbg,
  )

  show heading: set block(below: 2em)
  set line(stroke: 0.2pt + color1)
  set heading(numbering: "1.1.")
  set math.equation(numbering: "(1)")
  set text(lang: "es", font: "New Computer Modern", fill: color1)


  set table(
    stroke: frame(black),
  )

  cover(ramo)
  pagebreak()

  set par(justify: true)

  show raw: set text(font: "CaskaydiaCove NF")

  set page(
    margin: (top: 4.0cm),
    header: align(bottom)[

      #grid(
        columns: (1fr, 2fr, 1fr),
        align: (left + horizon, center + horizon, right + horizon),
        [#image(
          "Imagenes/Logos/Isotipo-horizontal-black.svg",
          width: 3cm,
        )],
        [#ramo],
        [#align(right)[#context counter(page).display()]],
      )
      #line(length: 100%)
    ],
    // footer: [
    //   #set par(first-line-indent: (
    //     amount: 0em,
    //     all: true,
    //   ))
    //   #line(length: 100%)
    //   #grid(columns: (1fr, 1fr), align: top)[
    //     #text(size: 8pt)[
    //       Facultad de Ingeniería y Ciencias Aplicadas\ Universidad de los Andes
    //     ]
    //   ][#align(right)[#context counter(page).display()]]

    // ],
  )

  show figure: it => [
    #it
    #align(center)[Fuente: Elaboración propia.]
  ]

  show table: it => [
    #align(center)[
      #it
    ]
  ]

  show: zebraw.with(
    lang: false,
    background-color: rgb("#F8F8F8"),
    lang-color: rgb("#F8F8F8"),
    inset: (top: 6pt, bottom: 6pt),
    numbering-separator: true,
    numbering-font-args: (fill: rgb("#3A3A3A")),
  )

  set par(first-line-indent: (
    amount: 1.5em,
    all: true,
  ))
  include "sections/resumen.typ"

  pagebreak()
  outline()
  pagebreak()
  doc
  pagebreak()
  bibliography("references.bib")
}
