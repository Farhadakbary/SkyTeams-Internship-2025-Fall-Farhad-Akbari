import 'package:test/test.dart';

import 'kadanesAlgorithm.dart';

void main() {
  group('Kadane\'s Algorithm Tests', () {
    test('returns correct max subarray sum for mixed numbers', () {
      expect(kadane([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6);
    });

    test('works for all positive numbers', () {
      expect(kadane([1, 2, 3, 4]), 10);
    });

    test('works for all negative numbers', () {
      expect(kadane([-2, -3, -1, -4]), -1);
    });

    test('works for single element array', () {
      expect(kadane([5]), 5);
      expect(kadane([-5]), -5);
    });

    test('works for array with zeros', () {
      expect(kadane([0, -1, 0, 2, -3, 0, 4]), 4);
    });

    test('returns 0 for empty array', () {
      expect(kadane([]), 0);
    });

    test('works for array with one positive and negatives', () {
      expect(kadane([-2, -1, 4, -3, -2]), 4);
    });

    test('works for array with multiple max subarrays', () {
      expect(kadane([1, 2, -1, 2, -1, 2]), 5); // [1,2,-1,2, -1,2] -> 5
    });
  });
}
