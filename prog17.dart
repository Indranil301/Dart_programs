//Write a dart program to generate multiplication tables.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print('Whose multiplication table do you need?');
  int m = getIntValue();
  print('Uptill how much?');
  int n = getIntValue();
  for (int i = 0; i <= n; i += 1) {
    print("|$i x $m = ${i * m}|");
  }
}
