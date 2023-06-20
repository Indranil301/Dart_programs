//Find the difference between the square of the sum
// and the sum of the squares of the first N natural numbers.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print('Enter the upper value');
  int n = getIntValue();
  int difference = squareOfSum(max: n) - sumOfSquare(max: n);
  print('The difference is:$difference');
}

int squareOfSum({required int max}) {
  int s = 0;
  for (int i = 1; i <= max; i += 1) {
    s = s + i;
  }
  return pow(s, 2).toInt();
}

int sumOfSquare({required int max}) {
  int sq = 0;
  for (int i = 1; i <= max; i++) {
    sq = sq + pow(i, 2).toInt();
  }
  return sq;
}
