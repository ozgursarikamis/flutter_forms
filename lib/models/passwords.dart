class Passwords {
  late String password;
  late String confirmPassword;
  late int length;

  Passwords() {
    password = "";
    confirmPassword = "";
    length = 8;
  }

  bool nonEmpty() {
    return password.isNotEmpty && confirmPassword.isNotEmpty;
  }

  bool ismatch() {
    return password == confirmPassword;
  }

  bool isValid() {
    return password.length >= length;
  }
}