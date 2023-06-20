//    • Randomly generate a 4-digit number. Ask the user to guess a 4-digit number.
//    For every digit the user guessed correctly in the correct place, they have a “cow”.
//    For every digit the user guessed correctly in the wrong place is a “bull.”
//     • Every time the user makes a guess, tell them how many “cows” and “bulls” they have.
//     Once the user guesses the correct number, the game is over. Keep track of the number of
//     guesses the user makes throughout the game and tell the user at the end.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  //generate random 4digit number
  String rndm = rndmNumber();
  print(rndm);
  print('Enter a 4-digit number');
  String? user;
  int cows, bulls, s = 0;
  while (rndm != user) {
    print('Enter a 4-digit number');
    user = (getIntValue()).toString();
    cows = checkCows(comp: rndm, user: user);
    bulls = checkBulls(comp: rndm, user: user);
    s += 1;
    print("Cows: $cows");
    print("Bulls:$bulls");
    cows = 0;
    bulls = 0;
  }
  print('Correct took you $s turn(s)');
}

int checkCows({required String comp, required String user}) {
  int k = 0;
  for (int i = 0; i < comp.length; i++) {
    if (comp[i] == user[i]) {
      k += 1;
    }
  }
  return k;
}

int checkBulls({required String comp, required String user}) {
  int k = 0;
  for (int i = 0; i < comp.length; i++) {
    if (comp[i] != user[i] && user.contains(comp[i]) == true) {
      k += 1;
    }
  }
  return k;
}

String rndmNumber() {
  String rndm = (1000 + Random().nextInt(8999)).toString();
  while (rndm.length != (rndm.split('').toSet()).length) {
    rndm = (1000 + Random().nextInt(9999)).toString();
  }
  return rndm;
}
