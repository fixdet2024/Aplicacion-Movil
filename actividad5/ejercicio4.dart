import 'dart:io';

void main() {
  print("Ingresa un número entero:");
  int numero = int.parse(stdin.readLineSync()!);
  int invertido = 0;

  while (numero != 0) {
    int digito = numero % 10;
    invertido = invertido * 10 + digito;
    numero = numero ~/ 10;
  }

  print("El número invertido es: $invertido");
}
