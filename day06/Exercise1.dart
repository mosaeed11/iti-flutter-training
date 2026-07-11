void main() {
  Dog dog = Dog("Rocky");
  Duck duck = Duck("Donald");

  dog.speak();

  duck.speak();
  duck.run();
  duck.swim();
}
class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print("$name makes a sound");
  }
}

mixin Runner {
  void run() {
    print("Running...");
  }
}

mixin Swimmer {
  void swim() {
    print("Swimming...");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print("Woof Woof");
  }
}

class Duck extends Animal with Runner, Swimmer {
  Duck(String name) : super(name);

  @override
  void speak() {
    print("Quack Quack");
  }
}
