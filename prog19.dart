//Add your 7 friend names to the list.
// Use where to find a name that starts with alphabet a.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  List<String> names = [];
  print('Enter 7 names');
  for (int i = 0; i < 7; i++) {
    String name = getStringValue();
    names.add(name);
  }
  Iterable j = names.where((element) => element[0] == 'a' || element[0] == 'A');
  print(j);
}
