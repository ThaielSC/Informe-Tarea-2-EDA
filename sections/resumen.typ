#heading(numbering: none, "Resumen", outlined: false)

Este trabajo presenta una evaluación comparativa de tres algoritmos de ordenamiento (Radix Sort, Quick Sort y Merge Sort) aplicados al problema de ordenar conjuntos masivos de códigos postales. Los códigos postales, la naturaleza clave de los datos, constan de una longitud fija de 6 caracteres (4 dígitos numéricos seguidos de 2 letras mayúsculas).

Metodología de Implementación y Evaluación

Dada la naturaleza de los datos, Radix Sort era el candidato teórico más eficiente. Los tres algoritmos fueron implementados en `C++` enfocándose en la generación de un vector de indices ordenados, evitando movimientos costosos en la estructura de datos original.

Para Radix Sort, se implementó una función de mapeo (getPos) que convierte cada carácter alfanumérico en un entero para su correcta distribución. Esto se logró restando el carácter base (`'0'` para dígitos y `'A'` para letras mayúsculas), aprovechando la estructura de tamaño fijo del código postal (6 caracteres) para simplificar las llamadas encadenadas al algoritmo de conteo (Counting Sort).

El rendimiento se midió con conjuntos de datos que variaron en tamaño (n): 500,000, 1,000,000 y 10,000,000 elementos. Para asegurar la confiabilidad, cada prueba se ejecutó 5 veces en una única máquina, calculando el tiempo promedio y la desviación estándar. Las especificaciones técnicas del entorno de prueba se detallan en la sección de Resultados.

En conclusión, Radix Sort demostró ser el algoritmo más eficiente en todos los escenarios de prueba. La ventaja de su complejidad cercana a O(n) sobre el crecimiento O(nlogn) de Quick Sort y Merge Sort garantiza que su superioridad en rendimiento sea aún más pronunciada con el incremento del tamaño de los datos.
