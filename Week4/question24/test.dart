import 'package:test/test.dart';

import 'k-thLargestElement.dart';
void main() {
  group('findKthLargest Tests', () {
    test('returns the 2nd largest element', () {
      expect(findKthLargest([3, 2, 1, 5, 6, 4], 2), 5);
    });

    test('returns the 4th largest with duplicates', () {
      expect(findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4), 4);
    });

    test('works for single element array', () {
      expect(findKthLargest([10], 1), 10);
    });

    test('works when k = 1 (largest element)', () {
      expect(findKthLargest([7, 10, 4, 3, 20, 15], 1), 20);
    });

    test('works when k = array length (smallest element)', () {
      expect(findKthLargest([7, 10, 4, 3, 20, 15], 6), 3);
    });

    test('throws ArgumentError if k is 0', () {
      expect(() => findKthLargest([1, 2, 3], 0), throwsArgumentError);
    });

    test('throws ArgumentError if k is negative', () {
      expect(() => findKthLargest([1, 2, 3], -1), throwsArgumentError);
    });

    test('throws ArgumentError if k is larger than array length', () {
      expect(() => findKthLargest([1, 2, 3], 4), throwsArgumentError);
    });

    test('works for array with all identical elements', () {
      expect(findKthLargest([5, 5, 5, 5], 3), 5);
    });

    test('works for array with negative numbers', () {
      expect(findKthLargest([-1, -2, -3, -4], 2), -2);
    });
  });
}
