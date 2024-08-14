import 'package:dart_tasks/person.dart';

void main(List<String> arguments) {
  Person ahmed = Person('Ahmed', 25);
  print(ahmed.printProperties());
  print('================================');

  ahmed.setName = 'Ahmed Ali';
  print('new name is ${ahmed.getName}');

  ahmed.setAge = 26;
  print('new age is ${ahmed.getAge}');

  print('================================');

  print(ahmed.printProperties());
}
