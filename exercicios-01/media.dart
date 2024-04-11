import 'dart:io';

void main() {
  // Solicitar que o usuário digite as três notas
  print('Digite a primeira nota:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a terceira nota:');
  double nota3 = double.parse(stdin.readLineSync()!);

  // Calcular a média aritmética
  double media = (nota1 + nota2 + nota3) / 3;

  // Mostrar o resultado na tela
  print('A média aritmética das notas é: $media');
}
