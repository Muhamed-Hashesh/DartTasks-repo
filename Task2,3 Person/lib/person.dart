class Person{
  String name;
  int age;
  Person({required this.name, required this.age});
  String printProperties(){
    return "The person name is $name and age is $age";
  }
}