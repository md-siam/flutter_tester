import 'package:flutter/material.dart';

class MyUnitTest extends StatelessWidget {
  const MyUnitTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unit Testing')),
      body: const Center(
        child: Text('Testing'),
      ),
    );
  }
}
