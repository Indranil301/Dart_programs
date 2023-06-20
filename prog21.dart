//Write a function named generateRandom() in dart that randomly returns 100 or null.
// Also, assign a return value of the function to a variable named status that can’t be null.
// Give status a default value of 0, if generateRandom() function returns null.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  int? status = generateRandom() == null ? 0 : 100;
  print(status);
}

int? generateRandom() {
  int n = Random().nextInt(11);
  // int n = 100;
  if (n == 10) {
    return n;
  } else {
    return null;
  }
}
