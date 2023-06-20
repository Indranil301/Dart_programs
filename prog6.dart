// Write a program (function) that takes a list and returns a new list
// that contains all the elements of the first list minus all the duplicates.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Enter 10 integers");
  List<int> a = [];
  for (int i = 0; i <= 9; i += 1) {
    a.add(getIntValue());
  }
  //lets check for duplicates
  bool hasDuplicate = false;
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a.length; j++) {
      if (i != j && a[i] == a[j]) {
        hasDuplicate = true;
      }
    }
  }
  if (hasDuplicate == true) {
    List m = removeDuplicates(a: a);
    print("List with out duplicates $m");
  } else {
    print("No duplicates");
  }
}

List removeDuplicates({required List a}) => (a.toSet()).toList();
