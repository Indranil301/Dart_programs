// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  //generate a random number between 1 and 100
  int rndm = (Random().nextInt(99) + 1);
  print("Enter an integer between 1 and 100");
  int userInput = getIntValue();
  if (userInput == rndm) {
    print("Exactly Right!!!");
  } else if (userInput > rndm) {
    print("Too High");
  } else if (userInput < rndm) {
    print("Too low");
  }
}
