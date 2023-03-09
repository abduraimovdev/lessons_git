import 'dart:io';
import 'package:data_connection_checker_nulls/data_connection_checker_nulls.dart';
import 'package:test/expect.dart';
void main()  {
  print("Start");
  // number(10).forEach((data) => data != 9 ? print(data) : print("odam"));
  // print("end");
  connectivity().forEach((data) => print(data.toString()));
}


Stream<int> number(int n) async* {
  for(int i = 0; i <=n; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 2));
  }
}


Stream connectivity() async*{
  while(true){
    yield DataConnectionChecker().isActivelyChecking;
    await Future.delayed(Duration(seconds: 1));
  }
}