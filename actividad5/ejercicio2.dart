import 'dart:io';

void main() {
  print("¿Cuántos términos de Fibonacci quieres ver?");
  int n = int.parse(stdin.readLineSync()!);

  int num1 = 0, num2 = 1;

  print("Secuencia de Fibonacci:");
  for (int i = 1; i <= n; i++) {
    print(num1);
    int siguiente = num1 + num2;
    num1 = num2;
    num2 = siguiente;
  }
}
