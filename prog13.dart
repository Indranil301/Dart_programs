//Write a program to print a squareRoot of a number using user input.
import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);
void main() {
  print('Enter number to find square root');
  double n = getDoubleValue();
  double sqrt = calcSqrt(num: n);
  print('Square root: $sqrt');
}

double calcSqrt({required double num}) {
  double root = 0;
  for (double i = 1; i < num; i += 1) {
    if (pow(i, 2) == num) {
      root = i;
    }
  }
  return root;
}
