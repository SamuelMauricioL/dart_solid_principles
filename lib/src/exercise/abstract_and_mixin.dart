// Representation: https://miro.medium.com/v2/resize:fit:2000/format:webp/1*ntLhyV-KPs_mLNTXjm61IQ.png

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Walker {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmer {
  void swim() {
    print("I'm swimming");
  }
}

mixin Flyer {
  void fly() {
    print("I'm flying");
  }
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Swimmer, Flyer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}

void main() {
  // final duck = Duck();
  // duck.fly();
  // duck.swim();
  // duck.walk();

  // final bat = Bat();
  // bat.fly();
  // bat.walk();

  // final dolphin = Dolphin();
  // dolphin.swim();
}
