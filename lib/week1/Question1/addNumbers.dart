import 'package:test/test.dart';
import 'test.dart';

void main() {
  group('addNumbers', () {
    test('should correctly add two positive numbers', () {
      expect(addNumbers(10, 5), equals(15));
    });

    test('should correctly add a positive and negative number', () {
      expect(addNumbers(10, -5), equals(5));
    });

    test('should correctly add two negative numbers', () {
      expect(addNumbers(-3, -7), equals(-10));
    });

    test('should correctly add decimal numbers', () {
      expect(addNumbers(2.5, 3.1), closeTo(5.6, 0.0001));
    });
  });
}
