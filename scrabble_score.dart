// https://exercism.org/tracks/dart/exercises/scrabble-score

import 'dart:convert';
import 'dart:io';

void main() {
  int score = 0;
  var word = stdin.readLineSync(encoding: utf8);
  for (var letter in word!.toLowerCase().split('')) {
    print(letter);
    score += LetterValue.values.firstWhere((e) => e.name == letter).value;
  }
  print(score);
}

enum LetterValue {
  a,
  e,
  i,
  o,
  u,
  l,
  n,
  r,
  s,
  t,
  d,
  g,
  b,
  c,
  m,
  p,
  f,
  h,
  v,
  w,
  y,
  k,
  j,
  x,
  q,
  z,
}

extension LetterValueExtension on LetterValue {
  int get value {
    switch (this) {
      case LetterValue.a:
      case LetterValue.e:
      case LetterValue.i:
      case LetterValue.o:
      case LetterValue.u:
      case LetterValue.l:
      case LetterValue.n:
      case LetterValue.r:
      case LetterValue.s:
      case LetterValue.t:
        return 1;
      case LetterValue.d:
      case LetterValue.g:
        return 2;
      case LetterValue.b:
      case LetterValue.c:
      case LetterValue.m:
      case LetterValue.p:
        return 3;
      case LetterValue.f:
      case LetterValue.h:
      case LetterValue.v:
      case LetterValue.w:
      case LetterValue.y:
        return 4;
      case LetterValue.k:
        return 5;
      case LetterValue.j:
      case LetterValue.x:
        return 8;
      case LetterValue.q:
      case LetterValue.z:
        return 10;
    }
  }
}
