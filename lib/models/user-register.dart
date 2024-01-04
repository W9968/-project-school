class UserRegister {
  String username;
  String email;
  String password;

  UserRegister({
    this.username = "",
    this.email = "",
    this.password = "",
  });

  String get getUsername => username;
  set setUsername(String username) => this.username = username;

  String get getEmail => email;
  set setEmail(String email) => this.email = email;

  get getPassword => password;
  set setPassword(password) => this.password = password;
}
