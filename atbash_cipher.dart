// https://exercism.org/tracks/dart/exercises/atbash-cipher

import 'dart:convert';
import 'dart:io';

void main() {
  var plain = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];
  var cipher = [
    'z',
    'y',
    'x',
    'w',
    'v',
    'u',
    't',
    's',
    'r',
    'q',
    'p',
    'o',
    'n',
    'm',
    'l',
    'k',
    'j',
    'i',
    'h',
    'g',
    'f',
    'e',
    'd',
    'c',
    'b',
    'a',
  ];

  print('Enter the text to encode:');
  var abc = stdin.readLineSync(encoding: utf8)!.toLowerCase();
  var coding = '';

  for (var i = 0; i < abc.length; i++) {
    var index = plain.indexOf(abc[i]);
    if (index == -1) {
      coding += abc[i];
      continue;
    }
    coding += cipher[index];
  }
  print(coding.replaceAll(' ', ''));
}
