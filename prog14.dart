//Write a program in Dart to remove all whitespaces from String.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Enter a string");
  String s = getStringValue();
  String k = s.replaceAll(" ", "");
  print('String without whitespaces => $k');
}
