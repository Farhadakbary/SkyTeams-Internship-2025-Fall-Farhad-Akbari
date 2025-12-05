import 'mergArrays.dart';
import 'package:test/test.dart';

void main() {
  group('mergeArrays Tests', () {
    test('merges two sorted arrays normally', () {
      expect(mergeArrays([1, 3, 5], [2, 4, 6]), [1, 2, 3, 4, 5, 6]);
    });

    test('works when first array is empty', () {
      expect(mergeArrays([], [1, 2, 3]), [1, 2, 3]);
    });

    test('works when second array is empty', () {
      expect(mergeArrays([4, 5, 6], []), [4, 5, 6]);
    });

    test('merges when arrays contain duplicates', () {
      expect(mergeArrays([1, 2, 2], [2, 3]), [1, 2, 2, 2, 3]);
    });

    test('merges sorted negative numbers', () {
      expect(mergeArrays([-5, -3, -1], [-4, -2, 0]), [-5, -4, -3, -2, -1, 0]);
    });

    test('merges arrays of different lengths', () {
      expect(mergeArrays([1, 2, 10, 20], [3, 4]), [1, 2, 3, 4, 10, 20]);
    });

    test('merges when all values in one array are larger', () {
      expect(mergeArrays([1, 2, 3], [10, 11, 12]), [1, 2, 3, 10, 11, 12]);
    });

    test('merges when all values in one array are smaller', () {
      expect(mergeArrays([10, 11, 12], [1, 2, 3]), [1, 2, 3, 10, 11, 12]);
    });
  });
}
