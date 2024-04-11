import 'dart:io';

void main() {
  // Solicitar que o usuário digite a temperatura
  print('Digite a temperatura em Celsius:');
  double tempCelsius = double.parse(stdin.readLineSync()!);

  double tempFahren = (tempCelsius * 9/5) + 32;

  print('Temperatura em Fahrenheit: $tempFahren');
}

