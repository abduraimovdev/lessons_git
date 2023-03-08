void main() {
  // Task - 1

  // String str = "A1B2";
  // int s = 12;
  // print(toRadix(str, 16, 2));

  // Task - 2


  // Task - 3

  // ExchangeClipher ex = ExchangeClipher();
  // print(ex("abcXYZ"));

  // Task - 4

  // CaesarCode ex = CaesarCode(3);
  // print(ex.encode("ZZZ"));
  // print(ex.decode("AAA"));


  // Task - 5

  // TestPalindromicWord word = TestPalindromicWord();
  // print(word.checker("flutter"));

  // Task - 6



  // Task - 7

  // List<double> nums1 = [0.0, 1.0, 0.0, 3.0, 12.0];
  // print(nums1.moveZero());
  //
  // List<int> nums2 = [0, 1, 0, 3, 12];
  // print(nums2.moveZero());



}




// Task - 1
String toRadix(String number, int inRadix, int outRadix) {
  int sum = int.parse(number, radix: inRadix);
  String result = sum.toRadixString(outRadix);
  return result;
}


// Task - 3
class ExchangeClipher {
  String call(String text) {
    return text.toUpperCase().split("").reversed.join("");
  }
}

// Task - 4


class CaesarCode {
  int n;
  CaesarCode(this.n);

  String encode(String text) {
    String result = "";
    List<int> codes = text.toUpperCase().trim().codeUnits;
    for(var code in codes) {
      if(65 <= code && code <= 90){
        if(code == 90){
          result += String.fromCharCode(65);
        }else {
          result += String.fromCharCode(code + n);
        }
      }
    }
    return result;
  }

  String decode(String text) {
    String result = "";
    List<int> codes = text.toUpperCase().trim().codeUnits;
    for(var code in codes) {
      if(65 <= code && code <= 90){
        if(code == 65){
          result += String.fromCharCode(90);
        }else {
          result += String.fromCharCode(code - n);
        }
      }
    }
    return result;
  }

}
// Task  5


class TestPalindromicWord {
  bool checker(String text) => text.toLowerCase() == text.toLowerCase().split("").reversed.join("");
}

// Task - 6

List moveZero(List newList) {
  for(var item in newList) {
    if(item == 0){
      newList.add(item);
      newList.remove(item);
    }
  }
  return newList;
}


// Task - 7

extension MoveZeroes<T extends num> on List<T> {
  List<T> moveZero() {
    List<T> newList = this;
    for(T item in newList) {
      if(item == 0){
        newList.add(item);
        newList.remove(item);
      }
    }
    return newList;
  }
}


// Task - 8

class Quiz implements Comparable<Quiz> {
  int _id;
  int _number;
  String question;
  List<String> option;
  String _correct;
  int _selection = -1;

  Quiz._(
      this._id,
      this._number,
      this._correct,
      this._selection,
      this.question,
      this.option
      );
  factory Quiz({
    required int id,
    required int number,
    required String question,
    required List<String> option,
    required String correct,
    required int selection,
  }){
    option.shuffle();
    return Quiz._(id, number, correct, selection, question, option);
  }

  @override
  int compareTo(Quiz other) {
    return _id.compareTo(other._id);
  }

  Quiz copyWith({int? id, int? number, String? questions, List<String>? options, String? correct, int? selection}){
    return Quiz._(
        id ?? _id,
        number ?? _number,
        correct ?? _correct,
        selection ?? _selection,
        questions ?? question,
        options ?? option
    );
  }

  // Object(this._id,this.question, this.option, this._selection, this._correct, this._number).hashCode

  @override
  int get hashCode => Object().hashCode;
  
  @override
  bool operator ==(Object other) {
    return other is Quiz && _id == other._id && _number == other._number && _correct == other._correct && _selection == other._selection && question == other.question && option == other.option;
  }

  @override
  String toString() {
    return 'Quiz{_id: $_id, _number: $_number, question: $question, option: $option, _correct: $_correct, _selection: $_selection}';
  }


  int get selection => _selection;

  set selection(int value) {
    _selection = value;
  }

  String get correct => _correct;

  set correct(String value) {
    _correct = value;
  }

  int get number => _number;

  set number(int value) {
    _number = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}