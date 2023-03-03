class EmailValidException implements Exception {
  EmailValidException(this.error);
  final String error;
}
void validEmail(String email) {
  var regex = RegExp(r'@gmail.com|@mail.com$');
  if(!email.contains(regex)){
    throw EmailValidException("Error Email @gmail.com or @mail.com");
  }
}
void validText(String email) {
  var regex = RegExp(r'^\w+');
  if(!email.contains(regex)){
    throw EmailValidException("Error Email in Text Entered");
  }
}
void validNumber(String email) {
  var regex = RegExp(r'\d+');
  if(!email.contains(regex)){
    throw EmailValidException("Error Email in Number Entered");
  }
}
void emailValidator(String email) {
  validEmail(email);
  validText(email);
  validNumber(email);
}
void main() {
  String email = "abduraimov@gmail.co";
  try {
    emailValidator(email);
  } on EmailValidException catch(e) {
    print(e.error);
  }
}