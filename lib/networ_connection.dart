class NetworkException implements Exception {
  NetworkException(this.message);
  final String message;
}


class NetworkConnection {
  static bool connection = false;
  void connect() {
    if(connection){
      throw NetworkException("The Network is Connected \nComming soon :(");
    }
    print("Network Connection...");
    connection = true;
    print("\nNetwork Connected :)");
  }
  Future disconnect() async{
    print("Network is Disconnetion...");
    Future.delayed(Duration(seconds: 10), () {
      print("Disconnected :(");
    });
  }
}

void main() {
  NetworkConnection().connect();
  try {
    NetworkConnection().connect();
  }  catch(e) {
    print(e);
  }finally {
    NetworkConnection().disconnect();
  }
}