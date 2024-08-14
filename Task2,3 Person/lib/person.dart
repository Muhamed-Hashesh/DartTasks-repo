class Person{
  String _name;
  int _age;
  Person(this._name,  this._age);
  String printProperties(){
    return "The person name is $_name and age is $_age";
  }

  set setName(String name) => _name = name;
  set setAge(int age) => _age = age;

  String get getName => _name;
  int get getAge => _age;
}