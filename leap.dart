// https://exercism.org/tracks/dart/exercises/leap

void main() {
  final year = 2024;

  if (year % 4 == 0) {
    if (year % 100 != 0 || year % 400 == 0) {
      print("It's a leap year!");
    } else {
      print("It's not a leap year!");
    }
  } else {
    print("It's not a leap year!");
  }
}
