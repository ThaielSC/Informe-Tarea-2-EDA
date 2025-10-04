= Introducción

El presente informe aborda el problema de la ordenación eficiente de un gran volumen de paquetes para una agencia de correos. El desafío principal radica en ordenar los paquetes según su código postal, el cual posee una estructura alfanumérica específica de cuatro dígitos y dos letras.

Para resolver esta problemática, se propone la implementación de un método de ordenamiento lineal, específicamente RadixSort, que es particularmente adecuado para ordenar cadenas de longitud fija. El objetivo es demostrar la eficiencia de RadixSort en comparación con algoritmos de ordenamiento genéricos basados en comparaciones, como lo son QuickSort y MergeSort, cuyo rendimiento es típicamente del orden de $O(n log (n))$.

A lo largo de este documento, se detallará la implementación de RadixSort, utilizando CountingSort como subrutina para ordenar los códigos por cada una de sus "columnas" (caracteres). Finalmente, se presentarán y analizarán los resultados experimentales obtenidos al ejecutar estos algoritmos sobre diversos conjuntos de datos, con el fin de validar la hipótesis de que RadixSort ofrece una solución más optima para este escenario específico.
