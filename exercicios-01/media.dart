import 'dart:io';

void main() {
  // Solicitar notas
  print('Digite a primeira nota:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a terceira nota:');
  double nota3 = double.parse(stdin.readLineSync()!);

  // Calcular média
  double media = (nota1 + nota2 + nota3) / 3;

  // Mostrar resultado
  print('A média aritmética das notas é: $media');
}
