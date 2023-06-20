//Given a year, report if it is a leap year.
import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print('Enter a year');
  int year = getIntValue();
  bool isLeapyear = checkLeapYear(n: year);
  String s = isLeapyear == true ? "Is a leap year" : "Not a leap year";
  print(s);
}

bool checkLeapYear({required int n}) {
  if (n % 100 == 0 && n % 400 == 0) {
    return true;
  } else if (n % 100 != 0 && n % 4 == 0) {
    return true;
  } else {
    return false;
  }
}
