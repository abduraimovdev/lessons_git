import 'package:data_connection_checker_nulls/data_connection_checker_nulls.dart';

main() async {
  print(await connectivity());
}

Future<bool> connectivity() async {
  print("The statement 'this machine is connected to the Internet' is: ");
  print(await DataConnectionChecker().hasConnection);

  print("Current status: ${await DataConnectionChecker().connectionStatus}");

  print("Last results: ${DataConnectionChecker().lastTryResults}");

  var listener = DataConnectionChecker().onStatusChange.listen((status) {
    switch (status) {
      case DataConnectionStatus.connected:
        print('Data connection is available.');
        break;
      case DataConnectionStatus.disconnected:
        print('You are disconnected from the internet.');
        break;
    }
  });

  await Future.delayed(Duration(seconds: 5));
  print(listener.isPaused);
  await listener.cancel();



  print(listener.isPaused);
  return DataConnectionChecker().hasConnection;
}


