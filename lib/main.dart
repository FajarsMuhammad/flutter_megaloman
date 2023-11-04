import 'package:flutter/material.dart';
import 'package:j_logistic/pages/auth/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'sakkal-majalla',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 24.0),
          bodyMedium: TextStyle(fontSize: 20.0),
          bodySmall: TextStyle(fontSize: 16.0),
          labelLarge: TextStyle(fontSize: 24.0),
          labelMedium: TextStyle(fontSize: 20.0),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
