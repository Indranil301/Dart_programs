// Write a program that takes a list of numbers for example
// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Enter a list of 5 integers");
  List<int> list1 = [];
  for (int i = 0; i <= 4; i++) {
    int j = getIntValue();
    list1.add(j);
  }
  List list2 = [list1.first, list1[list1.length - 1]];
  print("First and last elements: $list2");
}
