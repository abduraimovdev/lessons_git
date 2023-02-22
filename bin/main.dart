// WORK
void main() {

}

class Customer {
  String name;
  bool _member = false;
  late String _memberType;

  Customer(this.name);

  String getName() => name;

  bool isMember() => _member;

  bool get member => _member;
  String get memberType => _memberType;

  set memberType(String value) {
    _memberType = value;
  }

  set member(bool value) {
    _member = value;
  }

  @override
  String toString() {
    return 'Customer{name: $name, _member: $_member, _memberType: $_memberType}';
  }
}

class Visit extends Customer {
  late Customer _customer;
  DateTime date;
  late double _serviceExpense;
  late double _productExpense;
  Visit(super.name, this.date);

  double get productExpense => _productExpense;
  double get serviceExpense => _serviceExpense;

  set productExpense(double value) {
    _productExpense = value;
  }

  set serviceExpense(double value) {
    _serviceExpense = value;
  }

  double getTotalExpense() => _productExpense + _serviceExpense;

  @override
  String toString() {
    return 'Visit{_customer: $_customer, date: $date, _serviceExpense: $_serviceExpense, _productExpense: $_productExpense}';
  }
}


class Discpunt



