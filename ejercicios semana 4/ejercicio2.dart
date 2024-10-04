import 'dart:io'; // Para leer datos desde la consola

void main() {
  print("Ingrese la edad:");
  int edad = int.parse(stdin.readLineSync()!); 

  if (edad < 18) {
    print("No es elegible para obtener la libreta militar.");
    return;
  }

  print("Ingrese el nivel del sistema de beneficio (1, 2, 3 u otro):");
  int nivel = int.parse(stdin.readLineSync()!);

  double precioBase = (edad > 18) ? 350.0 : 200.0;
  double descuento;

  if (edad > 18) {
    if (nivel == 1) {
      descuento = 0.40;
    } else if (nivel == 2) {
      descuento = 0.30;
    } else if (nivel == 3) {
      descuento = 0.15;
    } else {
      descuento = 0.0;
    }
  } else {
    if (nivel == 1) {
      descuento = 0.60;
    } else if (nivel == 2) {
      descuento = 0.40;
    } else if (nivel == 3) {
      descuento = 0.20;
    } else {
      descuento = 0.0;
    }
  }

  double precioFinal = precioBase * (1 - descuento);
  print("El precio final a pagar es: S/. ${precioFinal.toStringAsFixed(2)}");
}
