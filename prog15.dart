//Write a program to calculate Tip.
// Suppose, you often go to restaurant
// with friends and you have to split amount of bill.
// Write a program to calculate split amount of bill.

import 'dart:io';

int getIntValue() => int.parse(stdin.readLineSync()!);
String getStringValue() => stdin.readLineSync()!;
double getDoubleValue() => double.parse(stdin.readLineSync()!);
void main() {
  print("Enter total bill");
  double tBill = getDoubleValue(); //total bill
  print('Enter Tip percentage');
  double tipPercent = getDoubleValue(); //pertage of tip
  print("Number of people");
  int p = getIntValue(); //number of people
  double tip = tBill * (tipPercent / 100); //total tip to be paid
  double pBill = (tBill + tip) / p; //bill per head

  print("Bill perhead:$pBill \n Total tip:$tip");
}
