// In the game of Hangman, a clue word is given by the program that the player has to guess,
//     letter by letter. The player guesses one letter at a time until the entire word has been guessed.
//     (In the actual game, the player can only guess 6 letters incorrectly before losing).
//
// • Only let the user guess 6 times, and tell the user how many guesses they have left.
// • Keep track of the letters user guessed. If the user guesses a letter they had already guessed,
// don’t penalise them - let them guess again.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {}
