//Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.
// For example, say I type the string:
//  My name is Michele
// Then I would see the string:
//  Michele is name My
import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Enter a sentence without punctuation");
  String s = getStringValue();
  operation(str: s);
}

void operation({required String str}) {
  List p = str.split(' ');
  String j = '';
  for (int i = (p.length - 1); i >= 0; i--) {
    if (i != 0) {
      j = j + p[i] + ' ';
      continue;
    }
    j = j + p[i];
  }
  print(j);
}
