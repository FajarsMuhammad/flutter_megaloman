import 'package:flutter/material.dart';
import 'package:flutter_megaloman/common/constant/colors.dart';
import 'package:flutter_megaloman/pages/auth/auth_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // TextButton(
            //   onPressed: () {
            //     Navigator.pushReplacement(
            //       context,
            //       MaterialPageRoute(builder: (context) => const AuthPage()),
            //     );
            //   },
            //   child: const Icon(
            //     Icons.arrow_back,
            //     color: Colors.white,
            //   ),
            // ),
            IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const AuthPage()),
                );
              },
            ),
            const Text('Register'),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 24.0),
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(52, 0, 0, 0)),
              ),
              labelText: 'Full name',
              prefixIcon: Icon(
                Icons.person,
                color: ColorName.loginGray,
              ),
            ),
          ),
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(52, 0, 0, 0)),
              ),
              labelText: 'Email/username',
              prefixIcon: Icon(
                Icons.email,
                color: ColorName.loginGray,
              ),
            ),
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(52, 0, 0, 0)),
              ),
              labelText: 'Password',
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
            ),
            obscureText: _obscureText,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black87,
              // backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
