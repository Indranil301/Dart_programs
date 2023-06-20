// Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.
import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Enter your name");
  String name = getStringValue();
  print("Enter your age");
  int age = getIntValue();
  print("$name you have ${100 - age}yrs left to become 100");
}
