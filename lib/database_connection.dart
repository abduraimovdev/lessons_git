
class DatabaseConnectException implements Exception {
  DatabaseConnectException(this.error);
  final String error;
}
class Database {
  static bool dbconnection = false;
  void connect() {
    dbconnection = true;
    print("Database Connected :)");
  }
  void close() {
    dbconnection = false;
    print("Database Closed !");
  }
  void dispose() {
    dbconnection = false;
    print("Breaked");
  }
}
void dbconnect() {
  if(Database.dbconnection) {
    Database().connect();
  }else {
    throw DatabaseConnectException("Database Alredy Coonnected :(");
  }
}

void main() {
  try {
    dbconnect();
  } on DatabaseConnectException catch(e) {
    print(e.error);
  }finally {
    Database().dispose();
  }
}