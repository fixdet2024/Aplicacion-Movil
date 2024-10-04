import 'dart:io';

void main() {
  print('Ingrese la categoría del estudiante (A, B, C, D):');
  String? categoria = stdin.readLineSync()?.toUpperCase();
  double pension;

  if (categoria == 'A') {
    pension = 550.0;
  } else if (categoria == 'B') {
    pension = 500.0;
  } else if (categoria == 'C') {
    pension = 460.0;
  } else if (categoria == 'D') {
    pension = 400.0;
  } else {
    print('Categoría no válida');
    return;
  }

  print('Ingrese el promedio ponderado del ciclo anterior (0.00 a 20.00):');
  double promedio = double.parse(stdin.readLineSync()!); 
  double porcentajeDescuento;

  if (promedio < 14.0) {
    porcentajeDescuento = 0.0;
  } else if (promedio < 16.0) {
    porcentajeDescuento = 0.10; 
  } else if (promedio < 18.0) {
    porcentajeDescuento = 0.12; 
  } else if (promedio <= 20.0) {
    porcentajeDescuento = 0.15; 
  } else {
    print('Promedio no válido');
    return;
  }

  double montoDescuento = pension * porcentajeDescuento;

  double nuevaPension = pension - montoDescuento;

  print('Pensión actual: S/. $pension');
  print('Monto de descuento: S/. $montoDescuento');
  print('Nueva pensión: S/. $nuevaPension');
}
