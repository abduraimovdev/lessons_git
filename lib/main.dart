import 'dart:io';

void main() {
  String s = '{}{}{}';
  print(isValid(s));

  stdout.write('N ni kiriting: ');
  int N = int.parse(stdin.readLineSync()!);

  List<int> dost_sonlar = [];

  for (int i = 1; i <= N; i++) {
    int yigindi = 0;
    for (int j = 1; j < i; j++) {
      if (i % j == 0) {
        yigindi += j;
      }
    }
    if (yigindi == i) {
      dost_sonlar.add(i);
    }
  }

  print('sonlar:');
  for (int i = 0; i < dost_sonlar.length; i++) {
    stdout.write('${dost_sonlar[i]} ');
  }
  print('');
}

bool isValid(String s) {
  var list = s.split("");
  for (var i in list) {
    if (i == "{") {
      if (list.contains("}")) {
        list.remove(i);
        list.remove("}");
      } else {
        return false;
      }
    } else if (i == "[") {
      if (list.contains("]")) {
        list.remove(i);
        list.remove("]");
      } else {
        return false;
      }
    } else if (i == "(") {
      if (list.contains(")")) {
        list.remove(i);
        list.remove(")");
      } else {
        return false;
      }
    }
  }
  return true;
}
