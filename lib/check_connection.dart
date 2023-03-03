import 'networ_connection.dart';
class CheckNetwork {
  static String connect = "connec";
  void connectivity() {
      if(connect.toLowerCase() == "connect"){
        print("Network Connected  :)");
      }else if(connect.toLowerCase() == "disconnect"){
        print("Network disconnected  :(");
      }else {
        throw NetworkException("Network 404");
      }
  }
}

void main() {
  try{
    CheckNetwork().connectivity();
  } on NetworkException catch(e) {
    print(e.message);
  }
}