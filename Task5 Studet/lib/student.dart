import 'package:task5studet/person_class.dart';

class Student extends Person {
  int studentID;
  String grade;

  Student({required super.name, required super.age, required this.studentID, required this.grade})
     ;

  @override
  String printProperties() {
    return "The student name is $name and age is $age and student ID is $studentID and grade is $grade";
  }
}
