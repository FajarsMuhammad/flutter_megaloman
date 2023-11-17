import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'common/constant/environment.dart';
import 'pages/auth/splash_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: Environment.fileName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData darkTheme = ThemeData(
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
        brightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      title: 'Megaloman',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        // textTheme: const TextTheme(
        //   bodyMedium: TextStyle(color: Colors.white),
        // ),
        fontFamily: 'trebuchet-ms',
      ),

      //theme: darkTheme,
      home: const SplashPage(),
    );
  }
}
