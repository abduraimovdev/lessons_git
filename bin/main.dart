void main() {

}
// Task - 1
/*
abstract class Animal {}

mixin Walk {
  void walk() => print("Walking");
}
mixin Swim {
  void swim() => print("Swimming");
}
mixin Fly {
  void fly() => print("Flying");
}

abstract class Mammal extends Animal  {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

class Dolphin extends Mammal with Swim {}
class Bat extends Mammal with Walk, Fly {}
class Cat extends Mammal with Walk {}

class Dove extends Bird with Walk, Fly {}
class Duck extends Bird with Walk, Swim, Fly {}

class Shark extends Fish with Swim {}
class FlyingFish extends Fish with Swim, Fly {}
*/

// Task - 2
/*
class User {
  void viewAllProduct() => print("Products .....");
  void purchaseProducts() => print("Purches Product");
}
class Moderator extends User {
  void approveStore() => print("approveStore");
}
class Vendor extends Moderator {
  void createStore() => print("createStore");
  void deleteStore() => print("deleteStore");
}
*/

// Task - 3
/*
mixin Flutter {
  void flutter() => print("Flutter");
}
mixin Chirp {
  void chirp() => print("Chirp");
}
mixin Write {
  void write() => print("Writing...");
}
abstract class Bird with Flutter, Chirp {}
class QuickBird extends Bird with Write {}
class Dash extends Bird {}
class Parrot extends Bird {}
*/

// Task - 4
/*
mixin Flutter {
  void flutter() => print("Flutter");
}
mixin Chirp {
  void chirp() => print("Chirp");
}
mixin Write {
  void write() => print("Writing...");
}
abstract class Creature {}

class Bird extends Creature with Flutter, Chirp {}
class Insect extends Creature with Flutter {}

class Human extends Creature {} // Human -> Creature

class QuickBird extends Bird with Write {}
class Dash extends Bird {}
class Parrot extends Bird {}

class Mosquito extends Insect {}

*/


