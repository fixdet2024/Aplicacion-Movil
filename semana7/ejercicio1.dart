class Estudiante {
  String codigo, nombre;
  double nota1, nota2;

  Estudiante(this.codigo, this.nombre, this.nota1, this.nota2);

  double calcularPromedio() => (nota1 + nota2) / 2;

  void mostrarInformacion() {
    print('Código: $codigo\nNombre: $nombre\nNota 1: $nota1\nNota 2: $nota2\nPromedio: ${calcularPromedio()}');
  }
}

void main() {
  Estudiante estudiante = Estudiante('202401', 'Juan Pérez', 18.0, 15.5);
  estudiante.mostrarInformacion();
}
