//Write a program that prints the numbers from 1 to 100 and
// for multiples of ‘3’ print “Fizz” instead of the number
// and for the multiples of ‘5’ print “Buzz”,
// and for multiples of both ‘3’ and ‘5’ print Fizz-Buzz.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  for (int i = 1; i <= 100; i += 1) {
    if (i % 3 == 0 && i % 5 != 0) {
      print("Fizz");
    } else if (i % 5 == 0 && i % 3 != 0) {
      print('Buzz');
    } else if (i % 3 == 0 && i % 5 == 0) {
      print("Fizz-Buzz");
    } else {
      print(i);
    }
  }
}
