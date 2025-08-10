class Student {
  static int _count = 1;

  final int id;
  String _name;
  double _grade;
  String _email='';
  String _address='';
  String _phone='';
  Student(this._name,this._grade):id = _count++;
  //setter
   set name(String name)=>_name=name;
   set grade(double grade){
    if(grade>=0&&grade<=100){
      _grade=grade;
    }else {
      print("Grade must be between 0 and 100. ");
    }
   }
   set email(String email)=>_email=email;
   set address(String address)=>_address=address;
   set phone(String phone)=>_phone=phone;
  //getter
  String get name=>_name;
  double get grade=>_grade;
  String get email=>_email;
  String get address=>_address;
  String get phone=>_phone;
@override
String toString() {
  return "Student Name : $_name,\n ID: $id,\n Grade : $_grade,\n Email : $_email,\n Address : $_address,\n Phone : $_phone \n --------------- ";
}

 bool isPassed() {
    return _grade >= 60;
  }
}
//first soulation -my own soulation-
// Map<Student,bool> searchGrade (List<Student> students,double value){
//   Map<Student,bool> result = {};
//   for(var s in students){
//     if(s._grade>=value){
//       result[s]=true;
//     }else{
//       result[s]=false;
//     }
//   }
//   return result;
// }

//second soulation with Ai helping
List<Student> searchGrade(List<Student> students, double value, bool greater){
  List<Student> result = [];
  for(var s in students){
    if(greater){
      if(s._grade>value){
          result.add(s);
      }
    }else{
      if(s._grade<value){
          result.add(s);
      }
    }
  }
  return result;
}

