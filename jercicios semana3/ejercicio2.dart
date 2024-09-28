  // Enunciado 2

void main() {
  double totalAmount = 1000; 

  double josue = totalAmount * 0.27;

  double daniel = totalAmount * 0.25;

  double caleb = (josue + daniel) * 0.23;

  double tamar = josue * 0.85;

  double david = totalAmount - (josue + daniel + caleb + tamar);

  print('Tamar: \$${tamar.toStringAsFixed(2)}');
  print('Josué: \$${josue.toStringAsFixed(2)}');
  print('Caleb: \$${caleb.toStringAsFixed(2)}');
  print('Daniel: \$${daniel.toStringAsFixed(2)}');
  print('David: \$${david.toStringAsFixed(2)}');
}