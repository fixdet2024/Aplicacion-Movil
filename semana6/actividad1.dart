import 'dart:io';

void main() {
  Sueldo sueldo = Sueldo();

  sueldo.sueldoBasico = obtenerSueldoBasico();
  sueldo.porcentajeComision = obtenerPorcentajeComision();
  sueldo.porcentajeDescuento = obtenerPorcentajeDescuento();

  double totalVendido = obtenerTotalVendido();

  double comision = sueldo.calcularComision(totalVendido);
  double sueldoBruto = sueldo.calcularSueldoBruto(comision);
  double descuento = sueldo.calcularDescuento(sueldoBruto);
  double sueldoNeto = sueldo.calcularSueldoNeto(sueldoBruto, descuento);

  imprimirBoleta(sueldo.sueldoBasico, comision, sueldoBruto, descuento, sueldoNeto);
}

double obtenerSueldoBasico() {
  stdout.write('Ingrese el sueldo básico: ');
  return double.parse(stdin.readLineSync()!);
}

double obtenerPorcentajeComision() {
  stdout.write('Ingrese el porcentaje de comisión (en decimal): ');
  return double.parse(stdin.readLineSync()!);
}

double obtenerPorcentajeDescuento() {
  stdout.write('Ingrese el porcentaje de descuento (en decimal): ');
  return double.parse(stdin.readLineSync()!);
}

double obtenerTotalVendido() {
  stdout.write('Ingrese el importe total vendido en el mes: ');
  return double.parse(stdin.readLineSync()!);
}

class Sueldo {
  double _sueldoBasico = 0;
  double _porcentajeComision = 0;
  double _porcentajeDescuento = 0;

  double get sueldoBasico => _sueldoBasico;
  set sueldoBasico(double value) {
    _sueldoBasico = value;
  }

  double get porcentajeComision => _porcentajeComision;
  set porcentajeComision(double value) {
    _porcentajeComision = value;
  }

  double get porcentajeDescuento => _porcentajeDescuento;
  set porcentajeDescuento(double value) {
    _porcentajeDescuento = value;
  }

  double calcularComision(double totalVendido) {
    return totalVendido * _porcentajeComision;
  }

  double calcularSueldoBruto(double comision) {
    return _sueldoBasico + comision;
  }

  double calcularDescuento(double sueldoBruto) {
    return sueldoBruto * _porcentajeDescuento;
  }

  double calcularSueldoNeto(double sueldoBruto, double descuento) {
    return sueldoBruto - descuento;
  }
}

void imprimirBoleta(double sueldoBasico, double comision, double sueldoBruto, double descuento, double sueldoNeto) {
  print('\n--- Boleta ---');
  print('Sueldo básico: S/. ${sueldoBasico.toStringAsFixed(2)}');
  print('Comisión: S/. ${comision.toStringAsFixed(2)}');
  print('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
}
