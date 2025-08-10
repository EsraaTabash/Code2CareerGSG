import 'dart:io';

void main() {
  print('Hello GSG !');
  //Q1
  print("Enter your age : ");
  int age_input = int.parse(stdin.readLineSync() ?? '0');

  if (age_input <= 0) {
    print("age must be older than zero.");
  } else if (age_input > 120) {
    print("age must be real age.");
  } else if (age_input >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote yet.");
  }


  //Q2
  for(int i = 1 ; i <=20 ; i++){
    if(i%2==0){
      print(i);
    }
  }

  //Q3
  bool isLocked = true;
  while(isLocked){
    print("Enter password!.");
    var password = stdin.readLineSync()??'0';
    if(password == "admin123"){
      isLocked=false;
      print("Access granted.");
    }else{
      print("Wrong password! Try again.");
    }
  }

  //Q4
   print("Enter your exam score from 0-100 : ");
  double score_input = double.parse(stdin.readLineSync() ?? '0');
  if(score_input>=90&&score_input<=100){
    print("Excellent! You got an A.");
  }else if(score_input>=80&&score_input<90){
    print("Very Good! You got a B.");
  }else if(score_input>=70&&score_input<80){
    print("Good! You got a C.");
  }else if(score_input>=0&&score_input<70){
    print("You need improvement. You got a D.");
  }else{
    print("invalid input");
  }

}

