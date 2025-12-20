import 'package:test/test.dart';

import 'decimalToBinary.dart';

void main() {
  group('Decimal to Binary Tests', () {
    test('Convert 0 to binary', () {
      expect(decimalToBinary(0), equals("0"));
    });

    test('Convert 5 to binary', () {
      expect(decimalToBinary(5), equals("101"));
    });

    test('Convert 10 to binary', () {
      expect(decimalToBinary(10), equals("1010"));
      print(decimalToBinary(10));
    });

    test('Convert 32 to binary', () {
      expect(decimalToBinary(32), equals("100000"));
    });
  });
}
