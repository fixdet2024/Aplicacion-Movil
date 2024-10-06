import 'dart:io';

void main() {
  print("Ingresa el tamaño de la matriz n x n:");
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));

  int valor = 1;
  int inicioFila = 0, finFila = n - 1;
  int inicioColumna = 0, finColumna = n - 1;
  while (inicioFila <= finFila && inicioColumna <= finColumna) {
    for (int i = inicioColumna; i <= finColumna; i++) {
      matriz[inicioFila][i] = valor++;
    }
    inicioFila++;
    for (int i = inicioFila; i <= finFila; i++) {
      matriz[i][finColumna] = valor++;
    }
    finColumna--;

    for (int i = finColumna; i >= inicioColumna; i--) {
      matriz[finFila][i] = valor++;
    }
    finFila--;

    for (int i = finFila; i >= inicioFila; i--) {
      matriz[i][inicioColumna] = valor++;
    }
    inicioColumna++;
  }
  print("Matriz en espiral:");
  for (var fila in matriz) {
    print(fila);
  }
}
