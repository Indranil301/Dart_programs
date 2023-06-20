//Write a program to find BMI.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print('Enter your bodyweight in Kg');
  double weight = getDoubleValue();
  print('Enter your height in meter');
  double height = getDoubleValue();
  double BMI = weight / pow(height, 2);
  print('Your BMI: $BMI');
}
