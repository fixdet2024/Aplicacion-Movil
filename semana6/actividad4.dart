import 'dart:io';

void main() {
  Empleado empleado = Empleado();

  empleado.categoria = obtenerCategoria();
  empleado.horasTrabajadas = obtenerHorasTrabajadas();
  empleado.numeroHijos = obtenerNumeroHijos();

  double sueldoBasico = empleado.calcularSueldoBasico();
  double bonificacion = empleado.calcularBonificacion();
  double sueldoBruto = empleado.calcularSueldoBruto(sueldoBasico, bonificacion);
  double descuento = empleado.calcularDescuento(sueldoBruto);
  double sueldoNeto = sueldoBruto - descuento;

  imprimirResultados(sueldoBasico, bonificacion, sueldoBruto, descuento, sueldoNeto);
}

String obtenerCategoria() {
  stdout.write('Ingrese la categoría del empleado (A o B): ');
  return stdin.readLineSync()!.toUpperCase();
}

double obtenerHorasTrabajadas() {
  stdout.write('Ingrese la cantidad de horas trabajadas: ');
  return double.parse(stdin.readLineSync()!);
}

int obtenerNumeroHijos() {
  stdout.write('Ingrese el número de hijos: ');
  return int.parse(stdin.readLineSync()!);
}

class Empleado {
  String _categoria = '';
  double _horasTrabajadas = 0;
  int _numeroHijos = 0;

  String get categoria => _categoria;
  set categoria(String value) {
    _categoria = value;
  }

  double get horasTrabajadas => _horasTrabajadas;
  set horasTrabajadas(double value) {
    _horasTrabajadas = value;
  }

  int get numeroHijos => _numeroHijos;
  set numeroHijos(int value) {
    _numeroHijos = value;
  }

  double calcularTarifaHoraria() {
    switch (_categoria) {
      case 'A':
        return 45.0;
      case 'B':
        return 37.5;
      default:
        return 0.0;
    }
  }

  double calcularSueldoBasico() {
    return horasTrabajadas * calcularTarifaHoraria();
  }

  double calcularBonificacion() {
    if (_numeroHijos <= 3) {
      return _numeroHijos * 40.5;
    } else {
      return (3 * 40.5) + ((_numeroHijos - 3) * 35.0);
    }
  }

  double calcularSueldoBruto(double sueldoBasico, double bonificacion) {
    return sueldoBasico + bonificacion;
  }

  double calcularDescuento(double sueldoBruto) {
    if (sueldoBruto >= 3500) {
      return sueldoBruto * 0.135; 
    } else {
      return sueldoBruto * 0.10;
    }
  }
}

void imprimirResultados(double sueldoBasico, double bonificacion, double sueldoBruto, double descuento, double sueldoNeto) {
  print('\n--- Resultados ---');
  print('Sueldo básico: S/. ${sueldoBasico.toStringAsFixed(2)}');
  print('Bonificación por hijos: S/. ${bonificacion.toStringAsFixed(2)}');
  print('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
}
