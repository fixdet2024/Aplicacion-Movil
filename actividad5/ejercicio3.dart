import 'dart:io';

void main() {
  print("Ingresa un número para calcular su factorial:");
  int numero = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  for (int i = 1; i <= numero; i++) {
    factorial *= i;
  }

  print("El factorial de $numero es: $factorial");
}
