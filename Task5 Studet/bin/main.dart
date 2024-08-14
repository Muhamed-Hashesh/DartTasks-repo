import 'package:task5studet/student.dart';

void main(List<String> arguments) {
  Student ahmed =
      Student(name: 'Ahmed', age: 25, studentID: 1234, grade: 'third');

  print('\n=======================================================================================');
  print('== ${ahmed.printProperties()} ==');
  print('=======================================================================================');
}
