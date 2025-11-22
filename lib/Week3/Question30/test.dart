import 'package:test/test.dart';

import 'findMissingNumber.dart';

void main() {
  group('Find Missing Number Tests', () {
    test('Missing middle number', () {
      expect(findMissingNumber([1, 2, 4, 5]), equals(3));
    });

    test('Missing first number', () {
      expect(findMissingNumber([2, 3, 4, 5]), equals(1));
    });

    test('Missing last number', () {
      expect(findMissingNumber([1, 2, 3, 4]), equals(5));
      print(findMissingNumber([1, 2, 3, 4]));
    });

    test('Single element array, missing 1', () {
      expect(findMissingNumber([]), equals(1));
    });

    test('Array of 6 numbers missing 4', () {
      expect(findMissingNumber([1, 2, 3, 5, 6, 7]), equals(4));
      print(findMissingNumber([1, 2, 3, 5, 6, 7]));
    });
  });
}
