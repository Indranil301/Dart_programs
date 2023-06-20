//Write a program in Dart that find the area of a circle using function.
import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print('Enter radius');
  double r = getDoubleValue();
  double area = pi * pow(r, 2);
  print("Area:$area");
}
