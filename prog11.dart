//Write a program in Dart that finds simple interest.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Enter the principal amount");
  double p = getDoubleValue();
  print('Enter rate of interest');
  double r = getDoubleValue();
  print('Enter time in years');
  double t = getDoubleValue();
  double si = (p * r * t) / 100;
  print('The SI is: $si');
}
