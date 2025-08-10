import 'Student.dart';
void main() {
  // print('Hello Geeks!');
  List<Student> students = [];
  Student s1 = Student("Omar", 96);
  Student s2 = Student("Ali", 79);
  Student s3 = Student("Foad", 89);
  s1.address="Gaza";
  s2.address="Khanyounis";
  s3.address="Rafah";
  students.add(s1);
  students.add(s2);
  students.add(s3);
  s1.email="omar@gmail.com";
  s2.email="ali@gmail.com";
  s3.email="foad@gmail.com";
  s1.phone="+970123456789";
  s2.phone="+970123456789";
  s3.phone="+970123456789";

    print(" Students Info \n --------------- ");

  for(var s in students){
      print(s);
  }
    double searchValue = 90;
    print(" Students that's their grades up the grade [ $searchValue ] :");
    List<Student> highGrades = searchGrade(students, searchValue, true);
    for (var s in highGrades) {
      print(s);
    }
   print(" Updating Omar's email...");
   s1.email = "omar_new@gmail.com";
   print("Updated student: ");
   print(s1);

   students.sort((a,b)=>b.grade.compareTo(a.grade));
   print("All Students Sorted by Grade (Descending) :");
   for (var s in students) {
    print(s);
  }

  print("Students who passed :");
  for (var s in students) {
    if (s.isPassed()) {
      print(s.name);
    }
  }

}
