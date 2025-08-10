
import 'dart:io';

void main() {
  print("Hello Geeks ! ");

  //Q1
  greet('Layla'); // Output: Hello, Layla!
  greet('Ali', 'Welcome'); // Output: Welcome, Ali!

  //Q2
  registerUser(username: "esr_mz_ta", email: "esraa.tabash@gmail.com");

  //Q4
    printItems(['Apple', 'Banana', 'Grapes'], title: "Fruits");
}
//Q1 Function
void greet ( String name , [ String greeting = "Hello" ] ){
  print(greeting+", "+name+"!");
}

//Q2&Q3
void registerUser ( { required String username , required String email } ){
  if(email.contains("@")){
    print("success email for user $username"); 
    print("User $username registered with email $email. ");
  }else{
    print("Invalid email for user $username");
  }
}

//Q4
void printItems(List<String> items , {String title = 'Item List'}){
  print(title);
  for(int i = 0 ; i <items.length ; i++){
    print("${i + 1}. ${items[i]}!");
  }
  
}

