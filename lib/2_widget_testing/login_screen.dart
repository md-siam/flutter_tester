import 'package:flutter/material.dart';

class LoginScreenWidgetTest extends StatefulWidget {
  const LoginScreenWidgetTest({Key? key}) : super(key: key);

  @override
  State<LoginScreenWidgetTest> createState() => _LoginScreenWidgetTestState();
}

class _LoginScreenWidgetTestState extends State<LoginScreenWidgetTest> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              key: const ValueKey('email_id'),
              decoration: const InputDecoration(hintText: 'Enter Email Id'),
            ),
            TextFormField(
              controller: _passwordController,
              key: const ValueKey('password'),
              decoration: const InputDecoration(hintText: 'Enter Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login Button'),
            ),
          ],
        ),
      ),
    );
  }
}
