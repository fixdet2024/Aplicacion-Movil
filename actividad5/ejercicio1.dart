import 'dart:io';

void main() {
  // Solicitar dos números al usuario
  print("Ingresa el primer número:");
  int numero1 = int.parse(stdin.readLineSync()!);

  print("Ingresa el segundo número:");
  int numero2 = int.parse(stdin.readLineSync()!);
  int sumaPrimos = 0;
  int inicio = numero1 < numero2 ? numero1 : numero2;
  int fin = numero1 > numero2 ? numero1 : numero2;

  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumaPrimos += i; 
    }
  }

  print("La suma de los números primos es: $sumaPrimos");
}

bool esPrimo(int num) {
  if (num < 2) {
    return false; 
  }
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true; 
}
