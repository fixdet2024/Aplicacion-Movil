class Estudiante {
  String codigo;
  String nombre;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombre, this.nota1, this.nota2);

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
  Estudiante estudiante = Estudiante('4500', 'jheferson', 18.0, 15.5);
  estudiante.mostrarInformacion();
}
