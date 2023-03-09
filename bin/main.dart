import 'package:speed_test_dart/classes/server.dart';
import 'package:speed_test_dart/speed_test_dart.dart';
// import 'dart:io';
//
// import 'package:test/expect.dart';
//
// void main() async {
//   HttpClient client = HttpClient();
//   print("Yuklanmoqda..");
//   client.getUrl(Uri.parse("https://fluttermaster.com/wp-content/uploads/2018/08/fluttermaster.com-logo-web-header.png"))
//       .then((HttpClientRequest request) {
//     return request.close();
//   }).then((HttpClientResponse response) async {
//     response.pipe(File('./assets/images/logo_pip.png').openWrite());
//   }).whenComplete(() => print("Yuklandi ! :)"));
//
//   client.close();
// }

void main() async {
  // Create a tester instance
  SpeedTestDart tester = SpeedTestDart();

  // And a variable to store the best servers
  List<Server> bestServersList = [];

  final settings = await tester.getSettings();
  final servers = settings.servers;

  final _bestServersList = await tester.getBestServers(
    servers: servers,
  );
  bestServersList = _bestServersList;

  final downloadRate =
      await tester.testDownloadSpeed(servers: bestServersList).then(print);

  //Test upload speed in MB/s
  final uploadRate = await tester.testUploadSpeed(servers: bestServersList).then(print);


}