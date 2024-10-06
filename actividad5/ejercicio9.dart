import 'dart:io';

void main() {
  print("Ingresa la base:");
  int base = int.parse(stdin.readLineSync()!);
  print("Ingresa el exponente:");
  int exponente = int.parse(stdin.readLineSync()!);
  int resultado = 1;

  for (int i = 1; i <= exponente; i++) {
    resultado *= base;
  }

  print("El resultado de $base ^ $exponente es: $resultado");
}
