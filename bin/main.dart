import './extentions/StringExtentions.dart';
// class User {
//   String id;
//   String name;
//   String email;
//
//   User(this.id, this.email, this.name);
// }
//
//
// //
// // void main() {
// //   User user = User("01", "User 1", "userone@mail.edu");
// //   print(user.showInfo());
// //   List list = [1,2,4,5,6];
// //   list.show();
// //   int n = 9;
// //   print(n.inPositive);
// //   Map map = {1:2};
// //   map.showMap((key, value) => "Salom $key, $value, saloim");
// // }
//
// extension on User {
//   String showInfo() {
//     return "$name, $email";
//   }
// }
// extension on int {
//   int get square {
//     return this * this;
//   }
//   bool get inPositive {
//     return this > 0;
//   }
// }
// extension on List {
//   void show() {
//     for(int i = 0; i< length;i++) {
//       print(this[i]);
//     }
//   }
// }
//
// extension on Map {
//   void showMap<K, V>(String Function(K key, V value) func) {
//     for(var item in entries){
//       print(func(item.key, item.value));
//     }
//   }
// }
//
//
// extension StringCase on String {
//   String capitalize() => "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
//   bool isPhone() {
//     var regex = RegExp(r'^\+998(([9378])[012345789]|6[125679]|7[01234569])[0-9]{7}$');
//     print(regex.allMatches(this).map((e) => e.group(1)));
//     print(regex.allMatches(this));
//     print(runtimeType);
//     return regex.hasMatch(this);
//   }
// }
// extension StringPadding on String {
//   String zeros(int width) => padLeft(width, '0');
// }
//
//
// //
// // void main() {
// //   var text = "hello";
// //   print(text.capitalize());
// //   String number = "+998905668118";
// //   print(number.isPhone());
// //   print(StringCase('hello').capitalize());
// //   print('123'.zeros(6));
// //
// //
// // }
//
//
//
//
//
//
//
// class ClassToExtend {
//   const ClassToExtend({
//     required this.aNumber,
//     required this.astring,
//   });
//
//   final int aNumber;
//   final String astring;
// }
//
// extension ExtensionName on ClassToExtend {
//   String helloWorld() {
//     return '$runtimeType Type says hello to the world';
//   }
//   String get hello => 'hello $astring';
//   int operator +(int other) => aNumber + other;
// }
//
//
// extension StringCaseConverter on String {
//   String firstLetterUppercase() {
//     if (this!.isEmpty) {
//       return '';
//     }else {
//       final firstLetter = this!.substring(0,1);
//       final rest = this!.substring(1, this!.length);
//       return firstLetter.toUpperCase() + rest;
//     }
//   }
// }


void main() {
  String pass = "Aa@8118123123";
  print(pass.validPassword());
  StringPrinter.helloWorld();
  pass.show();
}
extension StringPrinter on String {
  static String helloWorld() {
    return 'Hello World';
  }
}
extension ObjectEx on Object {
  void show() {
    print(this);
  }
}
