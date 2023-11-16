import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SignupRequestModel {
  final String name;
  final String username;
  final String password;

  SignupRequestModel({
    required this.name,
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'username': username,
      'password': password,
    };
  }

  factory SignupRequestModel.fromMap(Map<String, dynamic> map) {
    return SignupRequestModel(
      name: map['name'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupRequestModel.fromJson(String source) =>
      SignupRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
