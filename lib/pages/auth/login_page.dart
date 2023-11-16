import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_megaloman/bloc/bloc/login_bloc.dart';
import 'package:flutter_megaloman/common/constant/colors.dart';
import 'package:flutter_megaloman/data/models/request/auth_request_model.dart';
import 'package:flutter_megaloman/pages/auth/signup_page.dart';
import 'package:flutter_megaloman/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscureText = true;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 8.0),
          const SizedBox(height: 50.0),
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(52, 0, 0, 0)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                labelText: 'Email/username',
                prefixIcon: Icon(
                  Icons.email,
                  color: ColorName.loginGray,
                ),
                fillColor: Colors.green),
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(52, 0, 0, 0)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              labelText: 'Password',
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
            ),
            obscureText: isObscureText,
          ),
          const SizedBox(height: 24.0),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loaded: (data) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                error: (message) => ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Error $message'))),
              );
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black87,
                          // backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                        ),
                        onPressed: () {
                          final model = AuthRequestModel(
                              username: usernameController.text,
                              password: passwordController.text);
                          context
                              .read<LoginBloc>()
                              .add(LoginEvent.login(model));
                        },
                        child: const Text(
                          'Masuk',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Dont have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
