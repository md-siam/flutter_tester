import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tester/3_integration_testing/login_screen.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group('Login Flow Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets(
        'Should show Required Field error message when user taps on login button without entering email id & password',
        (WidgetTester tester) async {
      // ARRANGE
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreenIntegrationTest(),
      ));

      // ATC
      Finder loginButton = find.byType(ElevatedButton);
      await tester.tap(loginButton);
      await tester.pumpAndSettle(const Duration(seconds: 2));

      Finder errorText = find.text('Required Field');

      // ASSERT
      expect(errorText, findsNWidgets(2));
    });
  });

  group('Login Flow Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets(
        'Should show HomeScreen when user taps on login button after entering valid email id & password',
        (WidgetTester tester) async {
      // ARRANGE
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreenIntegrationTest(),
      ));

      // ATC
      Finder userNameTextField = find.byKey(const ValueKey('email_id'));
      Finder passwordTextField = find.byKey(const ValueKey('password'));
      await tester.enterText(userNameTextField, 'richa@gmail.com');
      await tester.enterText(passwordTextField, 'password');

      Finder loginButton = find.byType(ElevatedButton);
      await tester.tap(loginButton);
      await tester.pumpAndSettle(const Duration(seconds: 2));

      Finder welcomeText = find.byType(Text);

      // ASSERT
      expect(welcomeText, findsOneWidget);
    });
  });
}
