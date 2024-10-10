import 'dart:io';

void main() {
  Camisa camisa = Camisa();

  camisa.precio = obtenerPrecioCamisa();
  camisa.cantidad = obtenerCantidadUnidades();
  
  double importeCompra = camisa.calcularImporteCompra();
  
  double primerDescuento = camisa.calcularPrimerDescuento(importeCompra);
  double segundoDescuento = camisa.calcularSegundoDescuento(importeCompra, primerDescuento);
  double descuentoTotal = primerDescuento + segundoDescuento;
  
  double importeAPagar = camisa.calcularImporteAPagar(importeCompra, descuentoTotal);
  
  imprimirResultados(importeCompra, primerDescuento, segundoDescuento, descuentoTotal, importeAPagar);
}

double obtenerPrecioCamisa() {
  stdout.write('Ingrese el precio de la camisa: ');
  return double.parse(stdin.readLineSync()!);
}

int obtenerCantidadUnidades() {
  stdout.write('Ingrese la cantidad de camisas adquiridas: ');
  return int.parse(stdin.readLineSync()!);
}

class Camisa {
  double _precio = 0; 
  int _cantidad = 0; 

  double get precio => _precio;
  set precio(double value) {
    _precio = value;
  }

  int get cantidad => _cantidad;
  set cantidad(int value) {
    _cantidad = value;
  }

  double calcularImporteCompra() {
    return _precio * _cantidad;
  }

  double calcularPrimerDescuento(double importeCompra) {
    return importeCompra * 0.07; 
  }

  double calcularSegundoDescuento(double importeCompra, double primerDescuento) {
    double importeRestante = importeCompra - primerDescuento;
    return importeRestante * 0.07; 
  }

  double calcularImporteAPagar(double importeCompra, double descuentoTotal) {
    return importeCompra - descuentoTotal;
  }
}
void imprimirResultados(double importeCompra, double primerDescuento, double segundoDescuento, double descuentoTotal, double importeAPagar) {
  print('\n--- Importe total de compras ---');
  print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
  print('Importe del primer descuento: S/. ${primerDescuento.toStringAsFixed(2)}');
  print('Importe del segundo descuento: S/. ${segundoDescuento.toStringAsFixed(2)}');
  print('Importe del descuento total: S/. ${descuentoTotal.toStringAsFixed(2)}');
  print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
}
