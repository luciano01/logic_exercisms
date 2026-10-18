// https://exercism.org/tracks/dart/exercises/two-fer

import 'dart:convert';
import 'dart:io';

void main() {
  print("Please enter a name:");
  var name = stdin.readLineSync(encoding: utf8);
  final knowTheName = name == null || name.trim() == "";
  if (knowTheName) {
    print("One for you, one for me.");
  } else {
    print("One for $name, one for me.");
  }
}
