import 'dart:io';
void main(){
  //Exerciese
  // final repasitory = Course();
  // final course = repasitory.curses();
  // print(course);

  //Task - 2

  // final repasitory = StorageRepository();
  // repasitory.printStorege();

  // Task - 3

  // var extra = Extra(log: NetworkImpelentation());
  // extra.run();

  // Task - 4

  // var extra = File(logger: WordFile());
  // extra.log();

}


// Oxirgi Exerciese --------------------------
abstract class Course {
  factory Course() => ActiveCourse();
  String? curses();
}

class ActiveCourse implements Course {
  @override
  String? curses() {
    return "Our Course Flutter";
  }
}

class NoActiveCourse implements Course {
  @override
  String? curses() {
    return "Course Not Found !";
  }
}

// Task - 1
IOService io = IOService();

abstract class IOService {
  factory IOService() => Service();

  int get number => 0;

  double get numberDouble => 0.0;

  String get text => '';

  void console(Object? object);
}

class Service implements IOService {
  @override
  String get text {
    String text = stdin.readLineSync() ?? '';
    return text;
  }

  @override
  int get number {
    String number = stdin.readLineSync() ?? '';
    return int.tryParse(number.trim()) ?? 0;
  }

  @override
  double get numberDouble {
    String doubleNum = stdin.readLineSync() ?? '';
    return double.tryParse(doubleNum.trim()) ?? 0.0;
  }

  @override
  void console(Object? object) {
    stdout.write(object);
  }
}


// Task - 2
abstract class StorageRepository {
  factory StorageRepository() => LocalStorage();
  void printStorege();
}

class LocalStorage implements StorageRepository {
  @override
  void printStorege() {
    print('LocalStorage ');
  }
}

class CloudStorage implements StorageRepository {
  @override
  void printStorege() {
    print('CloudStorage ');
  }
}




// Task - 3
abstract class NetworkRepository {
  void network(String s);
}

class NetworkImpelentation implements NetworkRepository {
  @override
  void network(String s) {
    print('Network Impelentation');
  }
}

class Extra {
  NetworkRepository? log;

  Extra({this.log});

  void run() {
    log?.network("Tarmoqga bog'landi !");
  }
}



// task - 4
abstract class FileRepository {
  void file(String s);
}

class PdfFile implements FileRepository {
  @override
  void file(String s) {
    print('This class File Reader! ');
  }
}

class WordFile implements FileRepository {
  @override
  void file(String s) {
    print('This of class WordFile ! ');
  }
}

class File {
  FileRepository? logger;
  File({this.logger});

  void log(){
    logger?.file('This is file open');
  }
}
