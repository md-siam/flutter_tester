import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tester/1_unit_testing/validator.dart';

void main() {
  ///--------------------[Email Validator]
  group("Email validators", () {
    test('Validate for empty email id', () {
      // Arrange & Act
      var result = Validator.validateEmail('');

      // Assert
      expect(result, 'Required Field');
    });

    test('Validate for invalid email id', () {
      // Arrange & Act
      var result = Validator.validateEmail('asdflajsdlfdfasdfkas');

      // Assert
      expect(result, 'Please enter a valid email id');
    });

    test('Validate for valid email id', () {
      // Arrange & Act
      var result = Validator.validateEmail('abc@gmail.com');

      // Assert
      expect(result, null);
    });
  });

  ///--------------------[Password Validator]
  group('Password validators', () {
    test('Validate for empty password', () {
      // Arrange & Act
      var result = Validator.validatePassword('');

      // Assert
      expect(result, 'Required Field');
    });

    test('Validate for invalid password', () {
      // Arrange & Act
      var result = Validator.validatePassword('pass');

      // Assert
      expect(result, 'Please enter at least 8 character for password');
    });

    test('Validate for valid password', () {
      // Arrange & Act
      var result = Validator.validatePassword('password');

      // Assert
      expect(result, null);
    });

  });
}
