// https://judge.beecrowd.com/en/problems/view/1004

import 'dart:io';

void main() {
  print('Enter value A:');
  var valueA = int.parse(stdin.readLineSync() ?? '0');
  print('Enter value B:');
  var valueB = int.parse(stdin.readLineSync() ?? '0');
  var PROD = valueA * valueB;
  print('PROD = $PROD');
}
