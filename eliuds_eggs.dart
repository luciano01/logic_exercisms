// https://exercism.org/tracks/dart/exercises/eliuds-eggs

import 'dart:io';

void main() {
  stdout.write('Positions: ');
  final position = stdin.readLineSync()!.replaceAll(' ', '');

  print('Número decimal no visor: ${_convertBinaryToDecimal(position)}');

  print(
    'Ovos de verdade no galinheiro: ${position.split('').where((bit) => bit == '1').length}',
  );
}

int _convertBinaryToDecimal(String binary) {
  int decimal = 0;
  int length = binary.length;

  for (int i = 0; i < length; i++) {
    if (binary[length - 1 - i] == '1') {
      decimal += (1 << i);
    }
  }

  return decimal;
}
