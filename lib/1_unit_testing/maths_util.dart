import 'package:flutter/material.dart';

int addition(int a, int b) {
  return a + b;
}
/// these are `re-usable` functions
///  
int subtraction(int a, int b) {
  return a - b;
}

int multiplication(int a, int b) {
  return a * b;
}


class MyUnitTest extends StatelessWidget {
  const MyUnitTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Unit Testing')),
      body: const Center(
        child: Text('Unit Testing'),
      ),
    );
  }
}
