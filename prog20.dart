//Create a map with name, phone keys and store some values to it.
// Use where to find all keys that have length of 4.

import 'dart:io';
import 'dart:math';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);

void main() {
  Map<String, int> map = {
    'Indranil': 875938579,
    'Subhojit': 469528658,
    'Sabyasachi': 752658925686,
    'Rohan': 36486268,
    'Pinki': 65387568,
    'Avi': 462374525,
    'Mona': 87462828,
    'Dean': 982979459,
    'Dona': 87326856287
  };
  Iterable j = map.keys.where((element) => element.length == 4);
  print('Keys of length 4:$j');
  print('And there phone numbers respectively');
  for (String i in j) {
    print(map[i]);
  }
}
