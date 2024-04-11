import 'dart:io';

void main() {
  // Solicitar temperatura
  print('Digite a temperatura em Celsius:');
  double tempCelsius = double.parse(stdin.readLineSync()!);

  // Converter temperatura
  double tempFahren = (tempCelsius * 9/5) + 32;

  // Mostrar resultado
  print('Temperatura em Fahrenheit: $tempFahren');
}

