/* 

Scrabble is a word game where players place letter tiles on a board to form words. Each letter has a value. A word's score is the sum of its letters' values.

Your task is to compute a word's Scrabble score by summing the values of its letters.

The letters are valued as follows:

Letter	Value
A, E, I, O, U, L, N, R, S, T	1
D, G	2
B, C, M, P	3
F, H, V, W, Y	4
K	5
J, X	8
Q, Z	10

 */

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
