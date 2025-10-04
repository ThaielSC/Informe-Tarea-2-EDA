#import "@preview/zebraw:0.5.5": *

#let code-render = (code, filePath, offset) => {
  show: zebraw.with(
    lang: filePath,
    background-color: rgb("#F8F8F8"),
    lang-color: rgb("#F8F8F8"),
    inset: (top: 6pt, bottom: 6pt),
    numbering-separator: true,
    numbering-font-args: (fill: rgb("#3A3A3A")),
    numbering-offset: offset,
  )

  code
}