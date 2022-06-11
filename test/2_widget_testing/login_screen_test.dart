import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tester/2_widget_testing/login_screen.dart';

void main() {
  testWidgets('Should have a title', (WidgetTester tester) async {
    // ARRANGE
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreenWidgetTest(),
    ));

    // ATC
    Finder title = find.text('Login');

    // ASSERT
    expect(title, findsOneWidget);
  });

  testWidgets('Should have one text field form to collect user email id',
      (WidgetTester tester) async {
    // ARRANGE
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreenWidgetTest(),
    ));

    // ACT
    Finder userNameTextField = find.byKey(const ValueKey('email_id'));

    // ASSERT
    expect(userNameTextField, findsOneWidget);
  });

  testWidgets('Should have one text field form to collect password',
      (WidgetTester tester) async {
    // ARRANGE
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreenWidgetTest(),
    ));

    // ACT
    Finder passwordTextField = find.byKey(const ValueKey('password'));

    // ASSERT
    expect(passwordTextField, findsOneWidget);
  });

  testWidgets('Should have one login button',
      (WidgetTester tester) async {
    // ARRANGE
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreenWidgetTest(),
    ));

    // ACT
    Finder loginButton = find.byType(ElevatedButton);

    // ASSERT
    expect(loginButton, findsOneWidget);
  });
}
