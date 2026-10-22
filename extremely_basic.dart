// https://judge.beecrowd.com/en/problems/view/1001

import 'dart:convert';
import 'dart:io';

void main() {
  print('Type A value: ');
  var valueA = stdin.readLineSync(encoding: utf8);
  print('Type B value: ');
  var valueB = stdin.readLineSync(encoding: utf8);
  var sum = int.parse(valueA ?? '0') + int.parse(valueB ?? '0');
  print('X = $sum');
}
