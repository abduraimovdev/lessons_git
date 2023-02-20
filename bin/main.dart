// void main() {
//   final setOne = {'one', 'two', 'three'};
//   final setTwo = {'one', 'two'};
//   final listTwo = [5,4,3,2,1];
//   final listThree = <double>[];
//   // print(getElementAtIndex(listOne, 1));
//   // print(add(1, 2.5));
//   // print(add(-.54, 2.5));
//   // print(add(11.5, .5));
//   print(unionSet(setOne, setTwo));
//   print(setOne.union(setTwo));
// }

import 'dart:math';

T first<T>(List<T> list) => list.isNotEmpty ? list[0] : throw Exception('List is empty');
T? getElementAtIndex<T>(List<T> list, int index) {
  if (index < 0 || index >= list.length) {
    return null;
  }
  return list[index];
}

num add<T extends num>(T a, T b) => a + b;
bool doTypesMatch<L, R>(L left, R right) => L == R;

List<T> where<T>(List<T> list, bool Function(T) func) {
  var result = <T>[];
  for (var e in list) {
    if (func(e)) {
      result.add(e);
    }
  }
  return result;
}
List<R> map<T, R>(List<T> list, R Function<R>(T) func) {
  var result = <R>[];
  for(var e in list){
    result.add(func(e));
  }

  return result;
}
List<T> union<T>(List<T>listOne, List<T> listTwo) {
  List<T> result = [];
  for(var one in listOne){
    if(listTwo.contains(one)){
      result.add(one);
    }
  }
  return result;
}
Set<T> unionSet<T>(Set<T>setOne, Set<T> setTwo) => {...setOne, ...setTwo};


abstract class Shape{
  double get area;
}

class Circle extends Shape{
  double radius;

  Circle({required this.radius});

  @override
  double get area => 3.14 * radius * radius;
}

class Square extends Shape{
  double length;
  Square({required this.length});

  @override
  double get area => length * length;
}

class Region<T extends Shape> {
  List<T> shapes;
  Region({required this.shapes});

  double get area {
    double totalArea = 0;
    for(var shape in shapes) {
      totalArea += shape.area;
    }
    return totalArea;
  }
}
// void main() {
//   var region = Region(
//       shapes: [
//         Circle(radius: 10),
//         Square(length: 10),
//         Square(length: 10),
//       ],
//   );
//   print(region.area);
// }

class Account {
  final int _id;
  int _sum;

  Account(final int id, final int money)
      : _id = id,
        _sum = max(0, money);
  get id => _id;

  set sum(int money) => _sum = max(0, money);
  int get sum => _sum;
}
class Transaction<T extends Account> {
  T fromAccount;
  T toAccount;
  int sum;

  Transaction(this.fromAccount, this.toAccount, this.sum);

  void execute() {
    if(fromAccount.sum >= sum) {
      toAccount.sum += sum;
      fromAccount.sum -= sum;
    }else {
      print("Hissobda mablag' yetarli emas !");
    }
  }
}
void main(){
  Account acc1 = Account(1857, 4500);
  Account acc2 = Account(3453, 5000);

  final transaction = Transaction<Account>(acc1, acc2, 1900);

  transaction.execute();

  print(acc1.sum);
  print(acc2.sum);
}

// class NewMap {
//
//   List<R> map<T, R>(List<T> list, R Function<R>(T) func) {
//     var result = <R>[];
//     for(var e in list){
//       result.add(func(e));
//     }
//
//     return result;
//   }
// }


abstract class Person {}

class Student extends Person {
  int id;
  String name;
  int age;

  Student(this.id, this.name, this.age);
}
class Course<T extends Person> {
  List<T> students;
  Course(this.students);
}


