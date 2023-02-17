void main() {
  Bus bus = Bus(name: "Chevrolet", year: 2023, speed: 200, seats: 16);
  print(bus);
}

abstract class Vehicle {
  String name;
  int year;
  int speed;
  int seats;

  Vehicle({
    required this.name,
    required this.year,
    required this.speed,
    required this.seats,
  });

  @override
  String toString() {
    return '$runtimeType{name: $name, year: $year, speed: $speed km, seats: $seats}';
  }
}
mixin Run {
  void run() => print("This is run");
  void stop() => print("This is stop");
}
mixin Turn {
  void right() => print("Turn the right");
  void left() => print("Turn the left");
}
class Bus extends Vehicle with Run, Turn {
  Bus({
    required super.name,
    required super.year,
    required super.speed,
    required super.seats,
  });
  void automaticDoor() => print("Automatic Open the Door");
}

class Car extends Vehicle with Run, Turn {
  Car({
    required super.name,
    required super.year,
    required super.speed,
    required super.seats,
  });
  void fastSpeed() => print("Fast the speed");
}
class Metro extends Vehicle with Run {
  Metro({
    required super.name,
    required super.year,
    required super.speed,
    required super.seats,
  });
}


