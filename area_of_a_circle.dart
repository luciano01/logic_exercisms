// https://judge.beecrowd.com/en/problems/view/1002

import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  final PI = math.pi;
  var valueR = stdin.readLineSync(encoding: utf8);
  var A = PI * math.pow(double.parse(valueR ?? '0'), 2);
  print('A=${A.toStringAsFixed(4)}');
}
