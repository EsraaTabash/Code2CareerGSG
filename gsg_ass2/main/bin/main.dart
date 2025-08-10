
import 'dart:io';

void main() {
  print("Hello Geeks ! ");
  print("--------------------");
  print("--------Qu1---------");
  num num1 = 12.2;
  num num2 = -6.7;
  print("check the  condition => ${( num1.toInt()%2==0 && num2.toInt()%2!=0 ) || (num2>0 && num1>0)}");
  num1++;
  num2--;
  print("increment the first num to be => $num1 and decrement the second num to be => $num2");
  int result = num1.toInt();
  print("casting num1 to int => $result ");
  print("betwise not for num1 => ${~result}");
  print("check the condition => ${(num1 > num2) ? "true" : "false"}");
  print("--------------------");
  print("--------Qu2---------");
  function(12.7);
  print("--------------------");
  print("--------Qu3---------");
  const List<int> nums = [2,4,6,8,10];
  Set<int> numSet = nums.toSet();
  numSet.add(12);
  Map<int,int> numMap= {for(int n in numSet) n : n*3};
  print(numMap);
  print("--------------------");
  print("--------Qu4---------");
  print("Enter number of days =>");
  int input_days = int.parse(stdin.readLineSync()?? "0");
  int years = input_days~/365;
  int remaining_days = input_days%365;
  int months = remaining_days~/30;
  int days = remaining_days%30;
  print("$input_days days => Years: $years , Months: $months , Days: $days");
}
void function (double num){
  print("The Ceiling of $num is => ${num.ceil()}");
  print("The Floor of $num is => ${num.floor()}");
  print("The Rounded of $num is => ${num.round()}");
  print("The original num is $num ");
  print("The condition is ${num>10 ? "Large" :"Small"}");
}
