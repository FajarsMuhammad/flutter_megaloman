import 'dart:convert';

class AuthResponseModel {
  final String? token;
  final String? username;
  final String? name;

  AuthResponseModel({
    this.token,
    this.username,
    this.name,
  });

  factory AuthResponseModel.fromJson(String str) =>
      AuthResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromMap(Map<String, dynamic> json) =>
      AuthResponseModel(
        token: json["token"],
        username: json["username"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "token": token,
        "username": username,
        "name": name,
      };
}
