import 'dart:io';

void main() {
  calcularYMostrarGastos();
}

void calcularYMostrarGastos() {
  double montoTotal = obtenerMontoTotal();

  double gastoAlquiler = calcularGasto(montoTotal, 0.23);
  double gastoPublicidad = calcularGasto(montoTotal, 0.07);
  double gastoTransporte = calcularGasto(montoTotal, 0.26);
  double gastoServiciosFeriales = calcularGasto(montoTotal, 0.12);
  double gastoDecoracion = calcularGasto(montoTotal, 0.21);
  double gastoGastosVarios = calcularGasto(montoTotal, 0.11);

  imprimirResultados(
    gastoAlquiler,
    gastoPublicidad,
    gastoTransporte,
    gastoServiciosFeriales,
    gastoDecoracion,
    gastoGastosVarios,
  );
}

double obtenerMontoTotal() {
  stdout.write('Ingrese el monto total a invertir: ');
  return double.parse(stdin.readLineSync()!);
}

double calcularGasto(double montoTotal, double porcentaje) {
  return montoTotal * porcentaje;
}

void imprimirResultados(
  double alquiler,
  double publicidad,
  double transporte,
  double serviciosFeriales,
  double decoracion,
  double gastosVarios,
) {
  print('\n--- Detalle de Gastos ---');
  print('Alquiler de espacio en la feria: S/. ${alquiler.toStringAsFixed(2)}');
  print('Publicidad: S/. ${publicidad.toStringAsFixed(2)}');
  print('Transporte: S/. ${transporte.toStringAsFixed(2)}');
  print('Servicios feriales: S/. ${serviciosFeriales.toStringAsFixed(2)}');
  print('Decoración: S/. ${decoracion.toStringAsFixed(2)}');
  print('Gastos varios: S/. ${gastosVarios.toStringAsFixed(2)}');
}