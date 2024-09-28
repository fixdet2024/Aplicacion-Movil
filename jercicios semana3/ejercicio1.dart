    
    //Enunciado 2

import 'dart:math';

void main() {
  void calculateCylinder(double radius, double height) {
    double area = 2 * pi * radius * (radius + height); 
    double volume = pi * pow(radius, 2) * height; 

    print('El area del cilindro: $area');
    print('El Volumen del cilindro: $volume');
  }
  
  double radius = 5.0; 
  double height = 10.0; 
  calculateCylinder(radius, height);
}
