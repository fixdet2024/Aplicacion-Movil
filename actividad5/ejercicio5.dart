import 'dart:io';

void main() {
  print("Ingrese el tamaño de la matriz N x N:");
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matrizA = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matrizB = List.generate(n, (_) => List.filled(n, 0));

  print("Ingrese los valores de la primera matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print("Elemento [$i][$j]:");
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("Ingrese los valores de la segunda matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print("Elemento [$i][$j]:");
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  List<List<int>> resultado = List.generate(n, (_) => List.filled(n, 0));
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      resultado[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  print("La suma de las matrices es:");
  for (int i = 0; i < n; i++) {
    print(resultado[i]);
  }
}