#heading(numbering: none, "Resumen", outlined: false)

En este trabajo, se implementaron y compararon tres algoritmos de ordenamiento (*Radix Sort*, *Quick Sort*, y *Merge Sort*) para resolver el problema de ordenar códigos postales. Estos códigos constan de 6 caracteres (4 números y 2 letras mayúsculas). Dada la naturaleza de los datos, se esperaba que Radix Sort fuera el algoritmo más eficiente.

Para medir su rendimiento, se implementaron en `C++` y se ejecutaron 5 veces en una única máquina con distintos conjuntos de datos, calculando el tiempo promedio y la desviación estándar para validar la confiabilidad de los resultados.

Los resultados, presentados en tablas, confirman que Radix Sort es el más eficiente para este tipo de datos. Además, el análisis posterior de los datos discutirá el comportamiento de cada algoritmo a medida que el número de elementos (n) aumenta.
