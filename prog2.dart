import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);
void main() {
  print("Enter 0:Rock");
  print("Enter 1:Paper");
  print("Enter 2:Sissors");
  int player = getIntValue();
  int computer = Random().nextInt(3);
  if (player >= 0 && player <= 2) {
    if (player == computer) {
      print("Match Draw");
    } else if ((player == 1 && computer == 0) ||
        (player == 2 && computer == 1) ||
        (player == 0 && computer == 2)) {
      print("Player won");
    } else {
      print("Computer won");
    }
  } else {
    print("Wrong input");
    exit(5);
  }
  print("Player :$player");
  print("Computer $computer");
}
