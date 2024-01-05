import 'dart:convert';

class Auth {
  int? id;
  String userid;
  String username;
  String avatar;
  String email;

  Auth(
      {this.id,
      this.userid = "",
      this.username = "",
      this.avatar = "",
      this.email = ""});

  String get getUsername => username;
  set setUsername(String username) => this.username = username;

  String get getUserid => userid;
  set setUserid(String userid) => this.userid = userid;

  String get getAvatar => avatar;
  set setAvatar(String avatar) => this.avatar = avatar;

  String get getEmail => email;
  set setEmail(String email) => this.email = email;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userid': userid,
      'username': username,
      'avatar': avatar,
      'email': email,
    };
  }

  factory Auth.fromMap(Map<String, dynamic> map) {
    return Auth(
      id: map['id'] as int,
      userid: map['userid'] as String,
      username: map['username'] as String,
      avatar: map['avatar'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Auth.fromJson(String source) =>
      Auth.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Auth(id: $id, userid: $userid, username: $username, avatar: $avatar, email: $email)';
  }
}
