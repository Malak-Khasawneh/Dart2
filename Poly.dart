class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("$name makes a sound.");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name barks.");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name meows.");
  }
}

class Bird extends Animal {
  Bird(String name) : super(name);

  @override
  void makeSound() {
    print("$name chirps.");
  }
}

void main() {
  final dog = Dog("Husk");
  final cat = Cat("Elbestino");
  final bird = Bird("Tweety");

  // Call the makeSound method on objects of different subclasses
  dog.makeSound();
  cat.makeSound();

  bird.makeSound();
}
