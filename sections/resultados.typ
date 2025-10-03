= Resultados Experimentales y Discución

#let tabla-resultados = table(
  columns: 4,
  inset: 6pt,
  table.header([*Tamaño*], [*Radix*], [*Quick*], [*Merge*]),
  [$500\K$],
  [$424.4 plus.minus 2.4$],
  [$837.6 plus.minus 1.0198$],
  [$968.2 plus.minus 2.4$],

  [$1\M\M$],
  [$1237.4 plus.minus 43.816$],
  [$2092.8 plus.minus 5.6356$],
  [$1883 plus.minus 8.94427$],

  [$10\M\M$],
  [$20462.8 plus.minus 1231.36$],
  [$30850.8 plus.minus 521.057$],
  [$26981.4 plus.minus 1412.95$],
)

#figure(
  caption: [Promedio de tiempo de ejecución para 3 ejecuciones de cada algoritmo y desviación estandar],
  tabla-resultados,
)<tabla_comparativa>

#let grafico-comparativa = image("../Imagenes/benchmark_plot.svg", width: 75%)

#figure(
  kind: "Grafico",
  supplement: [Gráfico],
  caption: [Rendimiento de Algoritmos de Ordenamiento],
  grafico-comparativa,
)<grafica_comparativa>

== Caracteristicas de Hardware

En la @hardware se presentan las caracteristicas de la maquina usada para correr los algoritmo.

#let hardware = block(
  stroke: black + 0.7pt,
  radius: 2pt,

  table(
    table.vline(x: 1, stroke: black + 0.7pt),
    stroke: none,
    columns: 2,
    [OS], [macOS 26.0.1 25A362 arm64],
    [CPU], [Apple M1],
    [Memory], [8192 MiB],
  ),
)


#figure(
  caption: [Caracteristicas de la maquina usada para ejecutar las pruebas],
  hardware,
)<hardware>
