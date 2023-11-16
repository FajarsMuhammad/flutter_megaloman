import 'dart:convert';

class SignupResponseModel {
  final String? name;
  final String? username;
  final String? password;

  SignupResponseModel({
    this.name,
    this.username,
    this.password,
  });

  factory SignupResponseModel.fromJson(String str) =>
      SignupResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignupResponseModel.fromMap(Map<String, dynamic> json) =>
      SignupResponseModel(
        name: json["name"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "username": username,
        "password": password,
      };
}
