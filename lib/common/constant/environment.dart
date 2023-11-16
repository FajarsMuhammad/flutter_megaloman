import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName =>
      kReleaseMode ? ".env.production" : ".env.development";
  static String get apiUrl => dotenv.env['BASE_API_URL'] ?? 'MY_FALLBACK';
  static String get signinUrl => dotenv.env['SIGNIN_API_URL'] ?? 'MY_FALLBACK';
  static String get signupUrl => dotenv.env['SIGNUP_API_URL'] ?? 'MY_FALLBACK';
}
