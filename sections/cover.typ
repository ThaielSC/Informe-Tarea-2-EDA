#import "@preview/ez-today:1.1.0"

#set par(leading: 0.65em)

#let cover = ramo => [

  #align(center + top)[#image(
    "../Imagenes/Logos/F.-de-Ingenieria ua-y-Ciencias-Aplicadas-horizontal.pdf.svg",
    width: 7cm,
  )]
  #align(center + horizon)[



    #text(size: 1.5em)[#ramo]


    #text(size: 3em)[*Tarea 2*]

    #text(size: 2em)[Ordenamiento de Orden Lineal]

  ]
  #align(right + bottom)[
    #block(width: 3.5cm)[
      #align(left)[
        *Integrantes:*
        - Tomás Melin
        - Thaiel Santiago

        *Profesor:*
        - José M. Saavedra
        - David Miranda


        #v(4cm)

      ]

    ]

  ]
  #align(center + bottom)[
    // #datetime.today().display("[month repr:long] [day], [year].")


    // To get the current date use this
    #ez-today.today(format: "M Y", custom-months: (
      "Enero",
      "Febrero",
      "Marzo",
      "Abril",
      "Mayo",
      "Junio",
      "Julio",
      "Agosto",
      "Septiembre",
      "Octubre",
      "Noviembre",
      "Diciembre",
    ))

  ]
]
