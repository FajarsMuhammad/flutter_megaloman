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
    return MaterialApp(
      title: 'Megaloman',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        // textTheme: const TextTheme(
        //   bodyMedium: TextStyle(color: Colors.white),
        // ),
        fontFamily: 'trebuchet-ms',
      ),
      home: const SplashPage(),
    );
  }
}
