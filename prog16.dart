//Write a dart program to check whether a character is a vowel or consonant.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Enter a character");
  String s = getStringValue();
  switch (s) {
    case 'A':
    case 'E':
    case 'I':
    case 'O':
    case 'U':
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print('Vowel');
      break;
    default:
      {
        print('Consonant');
      }
  }
}
