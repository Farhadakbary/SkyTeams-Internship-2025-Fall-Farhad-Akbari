import 'package:test/test.dart';
import 'factorial.dart';

void main() {
  group('Recursive Factorial Tests', () {
    test('factorial of 0', () {
      expect(factorial(0), equals(1));
    });

    test('factorial of 1', () {
      expect(factorial(1), equals(1));
    });

    test('factorial of 2', () {
      expect(factorial(2), equals(2));
    });

    test('factorial of 3', () {
      expect(factorial(3), equals(6));
    });

    test('factorial of 5', () {
      expect(factorial(5), equals(120));
    });

    test('factorial of 6', () {
      expect(factorial(6), equals(720));
    });

    test('factorial of 7', () {
      expect(factorial(7), equals(5040));
    });

    test('factorial of 10', () {
      expect(factorial(10), equals(3628800));
    });

    test('negative number throws error', () {
      expect(() => factorial(-3), throwsArgumentError);
    });

    test('larger number factorial 12', () {
      expect(factorial(12), equals(479001600));
    });
  });
}
