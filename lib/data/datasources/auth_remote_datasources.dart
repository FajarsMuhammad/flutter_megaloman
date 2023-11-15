import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_megaloman/common/constant/environment.dart';
import 'package:flutter_megaloman/data/models/request/auth_request_model.dart';
import 'package:flutter_megaloman/data/models/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  Future<Either<String, AuthResponseModel>> login(
      AuthRequestModel requestModel) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var url = Uri.parse('${Environment.apiUrl}/api/v1/auth/signin');
    try {
      final response = await http.post(
        url,
        headers: headers,
        body: requestModel.toJson(),
      );
      print('Response: $response');
      switch (response.statusCode) {
        case 200:
          return Right(AuthResponseModel.fromJson(response.body));
        default:
          return const Left('Server error');
      }
    } on Exception catch (_) {
      return const Left('Internal Server error');
    }
  }
}
