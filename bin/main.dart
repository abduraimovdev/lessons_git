import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:io';

import 'package:lesson/io_service.dart';

void main(List<String> args) async {
  // Task - 1

  // final data = await getData().then(print).whenComplete(() => print("Succesfuly"));

  // Task -2

  // powFuture(2,4);

  // Task - 3

  // var data = await fetchData2('https://jsonplaceholder.typicode.com/todos/1',
  //     'https://jsonplaceholder.typicode.com/todos/2');
  // for (final maps in data) {
  //   final mapData = maps as Map<String, Object?>;
  //   print(mapData);
  // }

  // Task - 4

  // longOperation();

  // Task - 5

  // file.create("yigit.txt");
  // file.read("file.txt").then((value) => print(value[0]));
  // file.write("odam", {'id': '1', 'name': 'Muhammadazim'});
  // file.read("file.txt").then((value) => print(value));
}
// Task - 1 -------------------------------------------------------

Future<String> fetchData() async {
  Map<String, Object?> mapData = {
    "id": 1,
    "name": "Muhammadyusuf",
  };
  return json.encode(mapData);
}

Future<Map<String, Object?>> getData() async {
  print("Malumotlar olinmoqda ...");
  final response = await fetchData();
  final data = json.decode(response) as Map<String, Object?>;
  return data;
}

// Task - 2

Future powFuture(int a, int b) async {
  print("Hissoblanmoqda ! :)");
  Timer(Duration(seconds: 3), () => print(pow(a, b))).tick;
}

// Task - 3

Future<List<Object?>> fetchData2(String apiOne, String apiTwo) async {
  print("Malumot yuklanmoqda...");
  final response1 = await http.get(Uri.parse(apiOne));
  final response2 = await http.get(Uri.parse(apiTwo));

  if (response1.statusCode == 200 && response2.statusCode == 200) {
    final data1 = json.decode(response1.body);
    final data2 = json.decode(response2.body);

    return [data1, data2];
  } else {
    throw Exception('Api Failed :(');
  }
}

// Task - 4

Future<void> longOperation() async {
  io.console("Malumot yuklanmoqda");
  dot(".", 5).whenComplete(() => print("\nMalumot yuklandi :) !"));
}

Future dot(String text, int x) async {
  for (int i = 1; i <= x; i++) {
    await Future.delayed(Duration(seconds: 1), (() => io.console(text)));
  }
}

// Task - 5

FileCRUD file = FileCRUD();

class FileCRUD {
  Future<void> create(String fileName) async {
    io.console("File yozilmoqda");
    dot(".", 4).whenComplete(() => Future.delayed(
        Duration(seconds: 2),
        (() =>
            File('./bin/asset/$fileName').create())).whenComplete(() => print(
        "\nName: $fileName \nPath: project/bin/asset/$fileName \nyozib bo'lindi :)")));
  }

  Future<List<Object?>> read(String fileName) async {
    List<Object?> data = File('./bin/asset/$fileName').readAsLinesSync();
    return data;
  }

  Future<int> write(String fileName, Map<String, Object?> data) async {
    File('./bin/asset/file.txt')
        .writeAsStringSync(json.encode(data), mode: FileMode.append)
        .whenComplete(() => print("Succesfuly "));
    return 200;
  }
}
