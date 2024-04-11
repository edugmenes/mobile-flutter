import 'dart:io';

void main() {
  // Solicitar número
  print('Digite um número para calcular o fatorial:');
  int numero = int.parse(stdin.readLineSync()!);

  // Calcular fatorial
  int fatorial = calcularFatorial(numero);

  // Mostrar resultado
  print('O fatorial de $numero é: $fatorial');
}

// Função fatorial
int calcularFatorial(int numero) {
  if (numero == 0 || numero == 1) {
    return 1; // O fatorial de 0 e 1 é sempre 1
  } else {
    int resultado = 1;
    for (int i = 2; i <= numero; i++) {
      resultado *= i;
    }
    return resultado;
  }
}
