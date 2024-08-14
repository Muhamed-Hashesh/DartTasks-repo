class Animal {
  void speak() {
    print('The animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('Woof');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('Meow');
  }
}