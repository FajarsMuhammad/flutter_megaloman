import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_megaloman/bloc/bloc/login_bloc.dart';
import 'package:flutter_megaloman/pages/auth/login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: BlocProvider(
            create: (context) => LoginBloc(),
            child: const LoginPage(),
          ),
        ),
      ),
    );
  }
}
