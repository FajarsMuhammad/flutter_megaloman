import 'dart:convert';

class AuthRequestModel {
  final String username;
  final String password;

  AuthRequestModel({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory AuthRequestModel.fromMap(Map<String, dynamic> map) {
    return AuthRequestModel(
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthRequestModel.fromJson(String source) =>
      AuthRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
