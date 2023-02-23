void main() {
  List<int> list = [1,2,4,5,6];
  print(list.mapReversed((e) => e * 3).runtimeType);

  // String email = "abdu778118@mail.com";
  // print(email.isValidEmail);

  // String phone = "+998905668118    ";
  // print(phone.contactWithSpace());
  // double f = 32;
  // print(f.farhenheitToCelsius);
}

extension on String {
  Iterable<int> encode() => runes;
}
extension on List<int> {
  String decode() => map(String.fromCharCode).join();
}

extension<E, T> on Iterable<E>{
  Iterable<T> mapReversed<T>(T Function(E value) func){
    List<T> list = [];
    for(E item in this){
      list.insert(0, func(item));
    }
    return list;
  }
}

extension  on String {
  bool get isValidEmail {
    var regex = RegExp(r'(^(\w+\d*)*@gmail.com|@mail.com|icloud.com)');
    return regex.hasMatch(this);
  }
}

extension on String {
  String contactWithSpace() {
    var regex = RegExp(r'^(\+998)(\d{2,})(\d{3,})(\d{2,})(\d{2,})$');
    String result = "";
    if(regex.hasMatch(this.trim())) return regex.firstMatch(this.trim())?.groups([1, 2, 3, 4, 5]).join(" ") ?? "Error";
    return "Plase Try Again Number Vailed !";
  }
}

extension on double {
  double get celsiusToFarhenheit =>  (9 * this) / 5 + 32;
  double get farhenheitToCelsius => 5 * (this - 32) / 9;
}

