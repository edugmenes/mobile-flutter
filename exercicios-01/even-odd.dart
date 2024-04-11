import 'dart:io';

void main() {
  // Solicitar números
  print('Digite um número:');
  double nota1 = double.parse(stdin.readLineSync()!);

  // Comparar par ou ímpar
  String? evenOdd;

  try {
    if (nota1 % 2 == 0) {
      evenOdd = 'PAR';
    } else {
      evenOdd = 'ÍMPAR';
    }
  } catch (e) {
    print('Ocorreu um erro: $e');
  }

  // Mostrar resultado
  print('O número é $evenOdd!');
}
