// Enunciado3
void main() {
  double totalInvestment = 10000; 
  Map<String, double> expenseDistribution = {
    'Alquiler de espacio en la feria': 0.23,
    'Publicidad': 0.07,
    'Transporte': 0.26,
    'Servicios feriales': 0.12,
    'Decoración': 0.21,
    'Gastos varios': 0.11,
  };

  expenseDistribution.forEach((key, value) {
    double expense = totalInvestment * value;
    print('$key: \$${expense.toStringAsFixed(2)}');
  });
}