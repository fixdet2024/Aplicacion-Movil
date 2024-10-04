import 'dart:io';

void main() {
  print("Ingrese el importe total vendido:");
  double totalVendido = double.parse(stdin.readLineSync()!);

  print("Ingrese el número de hijos:");
  int hijos = int.parse(stdin.readLineSync()!);

  double sueldoBasico = 600.0;
  double comision;
  if (totalVendido > 15000) {
    comision = totalVendido * 0.07;
  } else {
    comision = totalVendido * 0.05;
  }

  double bonificacion;
  if (hijos < 5) {
    bonificacion = hijos * 25;
  } else {
    bonificacion = hijos * 22;
  }

  double sueldoBruto = sueldoBasico + comision + bonificacion;
  double descuento;
  if (sueldoBruto > 3500) {
    descuento = sueldoBruto * 0.15;
  } else {
    descuento = sueldoBruto * 0.11;
  }

  double sueldoNeto = sueldoBruto - descuento;

  print("Sueldo básico: S/.${sueldoBasico}");
  print("Comisión: S./${comision}");
  print("Bonificación: S./${bonificacion}");
  print("Sueldo bruto: S./${sueldoBruto}");
  print("Descuento: S./${descuento}");
  print("Sueldo neto: S./${sueldoNeto}");
}