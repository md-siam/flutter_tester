import 'package:flutter/material.dart';

class LoginScreenUnitTest extends StatefulWidget {
  const LoginScreenUnitTest({Key? key}) : super(key: key);

  @override
  State<LoginScreenUnitTest> createState() => _LoginScreenUnitTestState();
}

class _LoginScreenUnitTestState extends State<LoginScreenUnitTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Home Page'),
          ],
        ),
      ),
    );
  }
}