void main() {
  // Task - 1
  // Dog dog = Dog();
  // dog.greets(dog: "sa");

  // Task - 2
  // MovablePoint point = MovablePoint(x: 12, y: 10, xspeed: 10, yspeed: 12);
  // point.moveUp();
  // point.moveDown();
  // point.moveLeft();
  // point.moveRight();
  // print(point);


  // Task - 3
  // Invoice invoice = Invoice(id: 1, customer: Customer(1, "Saidmalik", 10), amount: 1000);
  // print(invoice.getAmount());
  // print(invoice.getCustomerId());
  // print(invoice.getCustomerName());
  // print(invoice.getCustomerDiscount());
  // invoice.setAmount(100);
  // print(invoice.getAmount());
  //


  // Task - 4

  // Book book = Book(name: "Muhammadyusuf", authors: [Author(name: "Muhammadyusuf",email: "abdu778118@gmail.com", gender: Gender.man)], price: 100000);
  // book.setQty(12);
  // print(book.getName());
  // print(book.getAuthor());
  // print(book.getPrice());
  // print(book.getQty());

  // Task - 5

}

// Task - 1 ---------------------------------------------------------------
abstract class Animal {
  late String name;
  Animal({this.name = ""});
  @override
  String toString() {
    return name;
  }
}
abstract class Mammal extends Animal {}

class Cat extends Mammal {

  void greets() => print("Meow");
}
class Dog extends Mammal {
  void greets({String dog = ""}) {
    if(dog.isNotEmpty) print("Wooof");
    else print("voof");
  }
}

// Task - 2 ---------------------------------------------------------------

abstract class Movable {
  void moveUp();
  void moveDown();
  void moveLeft();
  void moveRight();

}

class MovablePoint implements Movable {
  int x;
  int y;
  int xspeed;
  int yspeed;
  MovablePoint({
    required this.x,
    required this.y,
    required this.xspeed,
    required this.yspeed,
  });
  @override
  void moveUp() {
    y -= yspeed;
  }
  @override
  void moveDown() {
    y += yspeed;
  }
  @override
  void moveLeft() {
    x -= xspeed;
  }
  @override
  void moveRight() {
    x += xspeed;
  }
  @override
  String toString() {
    return "x : $x y : $y xspeed : $xspeed, yspeed : $yspeed ";
  }
}



// Task - 3 ---------------------------------------------------------------
class Customer {
  int id;
  String name;
  int discount;
  Customer(
    this.id,
    this.name,
    this.discount,
  );
}
class Invoice {
  int id;
  Customer customer;
  double amount;

  Invoice({
    required this.id,
    required this.customer,
    required this.amount,
});

  int getId() => id;
  Customer getCuStomer() => customer;
  void setCustomer(Customer customers) => customer = customers;
  double getAmount() => amount;
  void setAmount(double amounts) => amount = amounts;
  int getCustomerId() => customer.id;
  String getCustomerName() => customer.name;
  int getCustomerDiscount() => customer.discount;
  double getAmountAfterDiscount() => amount - customer.discount;
  @override
  String toString() {
    return 'Invoice{id: $id, customer: $customer, amount: $amount}';
  }
}

// Task - 4 ---------------------------------------------------------------
enum Gender {
  man,
  woman;
}

class Author {
  String name;
  String email;
  Gender gender;
  Author({this.name = "", this.email = "", this.gender = Gender.man});
}

class Book {
  String name;
  List<Author> authors = [];
  double price;
  int qty = 0;

  Book(
      {required this.name,
      required this.authors,
      required this.price,
      this.qty = 0});

  String getName() => name;

  List<Author> getAuthor() => authors;

  double getPrice() => price;

  void setPrice(double priceTwo) => price = priceTwo;
  int getQty() => qty;
  void setQty(int qtyTwo) => qty = qtyTwo;
  String getAuthorName() => authors.map((e) => e.name).toString();

  @override
  String toString() {
    return 'Book{name: $name, authors: $authors, price: $price, qty: $qty}';
  }
}

// Task - 5 ---------------------------------------------------------------

class Person {
  String name;
  String address;

  Person({
    required this.name,
    required this.address,
});
  String getName() => name;
  String getAddress() => address;
  void setAdrress(String adress) => address = adress;

  @override
  String toString() {
    return 'Person{name: $name, address: $address}';
  }
}
class Student extends Person {
  String program;
  int year;
  double fee;

  Student({
    required super.name,
    required super.address,
    required this.program,
    required this.year,
    required this.fee,
});
  void getProgram() => program;
  void getYear() => year;
  void getFee() => fee;

  void setProgram(String programm) => program = programm;
  void setYear(int years) => year = years;
  void setFee(double fe) => fee = fe;

  @override
  String toString() {
    return 'Student{name : $name, address: $address, program: $program, year: $year, fee: $fee}';
  }
}

class Staff extends Person {
  String school;
  double pay;
  Staff({
    required super.name,
    required super.address,
    required this.school,
    required this.pay,
  });
  void getSchool() => school;
  void getPay() => pay;

  void setSchool(String schol) => school = schol;
  void setPay(double payy) => pay = payy;

  @override
  String toString() {
    return 'Staff{name : $name, address: $address, school: $school, pay: $pay}';
  }
}

// Task - 6 ---------------------------------------------------------------



