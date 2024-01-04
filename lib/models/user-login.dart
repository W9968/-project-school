class UserLogin {
  String email;
  String password;

  UserLogin({this.email = "", this.password = ""});

  String get getEmail => email;
  set setEmail(String email) => this.email = email;

  get getPassword => password;
  set setPassword(password) => this.password = password;
}
