//You, the user, will have in your head a number between 0 and 100.
// The program will guess a number, and you, the user,
// will say whether it is too high, too low, or your number.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  print("Think an integer between 0 and hundred");
  print('Press 0:value too low');
  print('Press 1:value too high');
  print('Press 2:value is correct');
  int? choice, rndm;
  int min = 0;
  int max = 100;

  while (choice != 2) {
    rndm = min + Random().nextInt(max - min);
    print('Is it $rndm ?');
    choice = getIntValue();
    switch (choice) {
      case 0:
        {
          min = rndm;
        }
        break;
      case 1:
        {
          max = rndm;
        }
        break;
      default:
        {
          print('It was nice to play with you');
        }
    }
  }
}
