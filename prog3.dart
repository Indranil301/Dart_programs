// Take two lists, for example:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
//
// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
//
// and write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.
// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.
//
// Write a Dart code that takes this list and makes a new list that has only the odd elements of this list in it.
import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> list1 = operation1(a: a, b: b).toList();
  print("First operation $list1");
  List list2 = operation2(e: list1);
  print("Second operation $list2");
  List list3 = operation3(k: list1);
  print("Third operation $list3");
}

Set<int> operation1({required List<int> a, required List<int> b}) {
  List<int>? list1 = [];
  for (int i in a) {
    for (int j in b) {
      if (i == j) {
        list1.add(i);
      }
    }
  }
  return list1.toSet();
}

List operation2({required List e}) {
  List even = [];
  for (int i in e) {
    if (i % 2 == 0) {
      even.add(i);
    }
  }
  return even;
}

List operation3({required List k}) {
  List odd = [];
  for (int i in k) {
    if (i % 2 != 0) {
      odd.add(i);
    }
  }
  return odd;
}
