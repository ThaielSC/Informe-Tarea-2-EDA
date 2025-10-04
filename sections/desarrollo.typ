#import "../config.typ": ansi-render
#import "../utils/pcode.typ": *

= Desarrollo

== Nodo
== Lista Enlazada
== Radix Sort
== Quick Sort
== Merge Sort

== Modo de uso

=== Archivo main.cpp
Dentro de main se cargan los archivos en la carpeta data, esto se hace mediante la lista al principio del archivo con las rutas de los archivos. 

 #code-render(
 ```cpp
    std::vector<std::string> paths = {"data/codes_500K.txt", "data/codes_1M.txt",
                                      "data/codes_10M.txt"};
  ``` 
  ,"main.cpp", 13
)

Con los `paths` se crean instancias de la clase `DataSet` la cual implementa el método `load()` que permite cargar los datos de un `.txt` con los códigos postales, además estos son cargados en paralelo para disminuir el tiempo de carga.

#let load_dataset_code = ```cpp
  auto load_dataset = [&](const std::string &path) {
  DataSet ds(path);
  ds.load();
  {
    std::lock_guard<std::mutex> lock(cout_mutex);
    std::cout << "  -> Cargado: " << path << "..." << std::endl;
  }
  return ds;
};
```
#code-render(load_dataset_code, "main.cpp", 20)

*BenchMarks*

Para la medición de resultados se implemento la clase benchmark la cual se muestra su uso a continuación:

#let benchmark_usage_code =   ```cpp
    if (!datasets.empty()) {
      auto radix_S = small_bench.run(radixSort, "Radix Sort");
      auto quick_S = small_bench.run(quickSort, "Quick Sort");
      auto merge_S = small_bench.run(mergeSort, "Merge Sort");
      // auto radix_M = medium_bench.run(radixSort, "Radix Sort");
      // auto quick_M = medium_bench.run(mergeSort, "Merge Sort");
      // auto merge_M = medium_bench.run(quickSort, "Quick Sort");
      // auto radix_L = large_bench.run(radixSort, "Radix Sort");
      // auto quick_L = large_bench.run(mergeSort, "Merge Sort");
      // auto merge_L = large_bench.run(quickSort, "Quick Sort");

      // DEBUG: MOSTRAR DATA ORDENADA POR UN CADA ALGORITMO
      // Limita los n primeros códigos para mostrar en consola, 0 para mostrar todos
      int limit = 5;
      std::cout << "500k" << std::endl;
      std::cout << "Radix Sort: ";
      datasets[0].showOrderBy(radix_S, limit);
      std::cout << "Quick Sort: ";
      datasets[0].showOrderBy(quick_S, limit);
      std::cout << "Merge Sort: ";
      datasets[0].showOrderBy(merge_S, limit);
      std::cout << std::endl;

      // std::cout << "1MM" << std::endl;
      // std::cout << "Radix Sort: ";
      // datasets[1].showOrderBy(radix_M, limit);
      // std::cout << "Quick Sort: ";
      // datasets[1].showOrderBy(quick_M, limit);
      // std::cout << "Merge Sort: ";
      // datasets[1].showOrderBy(merge_M, limit);
      // std::cout << std::endl;

      // std::cout << "10MM" << std::endl;
      // std::cout << "Radix Sort: ";
      // datasets[2].showOrderBy(radix_L, limit);
      // std::cout << "Quick Sort: ";
      // datasets[2].showOrderBy(quick_L, limit);
      // std::cout << "Merge Sort: ";
      // datasets[2].showOrderBy(merge_L, limit);
      // std::cout << std::endl;

      small_bench.report();
      // medium_bench.report();
      // large_bench.report();
    }
  ```

#code-render(benchmark_usage_code, "main.cpp",45)


Para poder ejecutar todos los benchmarks solo hace falta des comentar el código, cómo se puede ver en el código los todos los algoritmos retornan una lista de indices ordenados, por lo que para poder mostrar los datos ordenados se implementó el método `showOrderBy(indices, limite)` que permite mostrar los datos ordenados en base a la lista de indices entregada al método y limitar cuantos códigos mostrar en consola.


=== Compilación y ejecución

Para compilar el proyecto, simplemente ejecuta el siguiente comando:

#ansi-render(
  "$ \u{1b}[38;2;75;105;198m make \u{1b}[0m",
)

Esto generará un ejecutable en la carpeta `build/`.

Para compilar y ejecutar el proyecto, puedes usar:

#ansi-render(
  "$ \u{1b}[38;2;75;105;198m make\u{1b}[0m run",
)

Un ejemplo de ejecución del programa sería:

#ansi-render(
  read("../output.txt"),
)


Si deseas limpiar los archivos de compilación, puedes usar:

#ansi-render(
  "$ \u{1b}[38;2;75;105;198m make\u{1b}[0m clean",
)

Además luego de ejecuta el programa se escribirá el archivo `results/results.csv` en la ruta del proyecto con los resultados de cada test ejecutado, este mismo archivo puede ser utilizado para generar un gráfico como el @grafica_comparativa con el script de python `plot_results.py`, para poder hacer esto es requisito tener instalada la librería Mathplotlib.
