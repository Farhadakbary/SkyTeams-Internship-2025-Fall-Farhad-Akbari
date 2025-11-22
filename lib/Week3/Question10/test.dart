import 'package:test/test.dart';

import 'isPrime.dart';

void main() {
  group('this number is', () {
    test('Prime number', () {
      expect(isPrime(17), true);
    });

    test('Non-prime number', () {
      expect(isPrime(20), false);
    });

    test('Edge case: 1', () {
      expect(isPrime(1), false);
    });

    test('Smallest prime number', () {
      expect(isPrime(2), true);
    });

    test('This number is not Prime', () {
      expect(isPrime(12), false);
    });
  });
}
