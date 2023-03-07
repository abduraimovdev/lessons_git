void main() {
  Shape shape = Circle();
  shape.calculateArea(4);
  shape.printArea(shape);
  // List<All> list = [
    // Car(),
    // Motorcycle(),
    // Truck(),
    // CreditCard(),
    // Loan(),
    // Mortgage(),
    // Bird(),
    // Fish(),
    // Insect(),
    // Rectangle(),
    // Circle(),
    // Triangle(),
    // Burger(),
    // Pizza(),
    // Sushi(),
    // Video(),
    // Music(),
    // Podcast(),
  // ];
  // for(All all in list){
  //   print(all.runtimeType);
  // }

  // HomeTask - 2
  // Task - 1
/*

  Animal animal = Animal();
  animal.makeSound();
  Dog dog = Dog();
  Animal animal2 = dog;
  animal2.makeSound();
*/

  // Task - 2
/*
  List<Shape> shape = [
    Circle(),
    Rectangle(),
  ];
  shape.forEach((e) => e.draw());
*/

  // Task - 3
/*
  List<Person> persons = [
    Person(),
    Person(),
    Employee(),
    Employee(),
  ];
  for(Person person in persons) {
    print(person.name);
    print(person.age);
    if(person is Employee) print(person.solary);
  }*/

  // HomeTask - 3
  // Task - 1
  /*List<Shape> shapes = [
    Rectangle(),
    Rectangle(),
    Circle(),
  ];

  shapes.forEach((element) {
    if(element is Rectangle) element.draw();
  });
  */

  // Task - 2
    /*Vehicle vehicle = Vehicle();
    Bike bike = vehicle as Bike;
    // bike.startEngine(); // Error
  */


}

abstract class All {}

// HomeTask - 1
// Task - 1
/*
abstract class Vehicle implements All {
  void drive();
}

class Car implements Vehicle{
  @override
  void drive() => print("This is a $runtimeType");
}
class Motorcycle implements Vehicle {
  @override
  void drive() => print("This is a $runtimeType");
}
class Truck implements Vehicle {
  @override
  void drive() => print("This is a $runtimeType");
}


//Task -2
abstract class Payment implements All {
  void calculateInterest();
}

class CreditCard implements Payment {
  @override
  void calculateInterest() => print("Payment is $runtimeType");
}
class Loan implements Payment {
  @override
  void calculateInterest() => print("Payment is $runtimeType");
}
class Mortgage implements Payment {
  @override
  void calculateInterest() => print("Payment is $runtimeType");
}

// Task - 3
abstract class Animal implements All{
  void move();
}

class Bird implements Animal {
  @override
  void move() => print("Animal is $runtimeType");
}
class Fish implements Animal {
  @override
  void move() => print("Animal is $runtimeType");
}
class Insect implements Animal {
  @override
  void move() => print("Animal is $runtimeType");
}

// Task - 4
abstract class Shape  implements All{
  void draw();
}

class Rectangle implements Shape {
  @override
  void draw() => print("Shape is $runtimeType");
}

class Circle implements Shape {
  @override
  void draw() => print("Shape is $runtimeType");
}

class Triangle implements Shape {
  @override
  void draw() => print("Shape is $runtimeType");
}

// Task - 5

abstract class Food  implements All{
  void cook();
}

class Burger implements Food {
  @override
  void cook() => print("Food is $runtimeType");
}

class Pizza implements Food {
  @override
  void cook() => print("Food is $runtimeType");
}
class Sushi implements Food {
  @override
  void cook() => print("Food is $runtimeType");
}

// Task - 6
abstract class Media implements All {
  void play();
}

class Video implements Media {
  @override
  void play() => print("Media is $runtimeType");
}

class Music implements Media {
  @override
  void play() => print("Media is $runtimeType");
}

class Podcast implements Media {
  @override
  void play() => print("Media is $runtimeType");
}

// Task - 7

abstract class Fruit implements All {
  void getVitaminC();
}

class Organge implements Fruit {
  @override
  void getVitaminC() => print("Fruit is $runtimeType");
}
class Lemon implements Fruit {
  @override
  void getVitaminC() => print("Fruit is $runtimeType");
}
class Strawberry implements Fruit {
  @override
  void getVitaminC() => print("Fruit is $runtimeType");
}
 // Task - 8
abstract class Shapee implements All {
  void calculatePerimeter();
}

class Rectanglee implements Shapee {
  @override
  void calculatePerimeter() => print(" Shapee is $runtimeType");
}
class Square implements Shapee {
  @override
  void calculatePerimeter() => print(" Shapee is $runtimeType");
}
class Circlee implements Shapee {
  @override
  void calculatePerimeter() => print(" Shapee is $runtimeType");
}


*/

  // Home Task - 2
// Task - 1
/*

class Animal {
  void makeSound() => print("Animal");
}
class Dog implements Animal {
  @override
  void makeSound() => print("Woof! :)");
}
*/

// Task - 2
/*
abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() => print("Drawing a circle");
}

class Rectangle implements Shape {
  @override
  void draw() => print("Drawing a rectangle");
}
*/

// Task - 3
class Person {
  String name = "Bekzod aka";
  int age = 20;
}
class Employee extends Person {
  int solary = 1200;
}



// HomeTask - 3

// Task - 2


class Vehicle {
  void startEngine() => print("");
}

class Car implements Vehicle {
  @override
  void startEngine() => print("Starting car engine");
}

class Bike implements Vehicle {
  @override
  void startEngine() => print("Starting bike engine");
}

// Home Task - 4
// Task - 1
class Fruit {
  void getJuice(Fruit fruit) => print('Fruit');
  void makeJuice(Fruit fruit) => print("$fruit");
}

class Apple extends Fruit {
  @override
  void getJuice(covariant Apple fruit) => print("Fruit is $runtimeType");
}

class Orange extends Fruit {
  @override
  void getJuice(covariant Orange fruit) => print("Fruit is $runtimeType");
}

// Task - 2


abstract class Shape {
  void calculateArea(int value);
  void printArea(Shape shape);
}

class Circle implements Shape {
  double calc = 0;
  @override
  void calculateArea(int r) => calc = 3.14 * r * r;
  @override
  void printArea(covariant Circle shape) => print(calc);
}
class Rectangle implements Shape {
  double calc = 0;
  @override
  void calculateArea(int r) => calc = 3.14 * r * r;
  @override
  void printArea(covariant Rectangle shape) => print(calc);
}
