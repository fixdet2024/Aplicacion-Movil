import 'dart:io';

class Estudiante {
  String codigo = '';
  String nombre = '';
  double nota1 = 0.0;
  double nota2 = 0.0;

  Estudiante();

  void ingresarDatos() {
    print('Ingrese el código del estudiante:');
    codigo = stdin.readLineSync()!;

    print('Ingrese el nombre del estudiante:');
    nombre = stdin.readLineSync()!;

    print('Ingrese la primera nota:');
    nota1 = double.parse(stdin.readLineSync()!);

    print('Ingrese la segunda nota:');
    nota2 = double.parse(stdin.readLineSync()!);
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }

  void mostrarInformacion() {
    print('Código: $codigo');
    print('Nombre: $nombre');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }
}

void main() {
  Estudiante estudiante = Estudiante();
  estudiante.ingresarDatos();
  estudiante.mostrarInformacion();
}
