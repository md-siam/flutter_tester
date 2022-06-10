import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tester/1_unit_testing/maths_util.dart';

void main() {
  group('Maths utils - ', () {
    test('Check for two numbers addition', () {
      // Arrange
      var a = 10;
      var b = 10;

      // Act
      var sum = addition(a, b);

      // Assert
      expect(sum, 20);
    });

    test('Check for two numbers subtraction', () {
      // Arrange
      var a = 20;
      var b = 10;

      // Act
      var sub = subtraction(a, b);

      // Assert
      expect(sub, 10);
    });

    test('Check for two numbers multiplications', () {
      // Arrange
      var a = 20;
      var b = 10;

      // Act
      var mul = multiplication(a, b);

      // Assert
      expect(mul, 200);
    });
  });
}
