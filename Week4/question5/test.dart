import 'rearrange.dart';
import 'package:test/test.dart';

void main() {
  group('reArrange Tests', () {
    test('moves even numbers to the front', () {
      expect(reArrange([1, 2, 3, 4, 5, 6]), [2, 4, 6, 1, 3, 5]);
    });

    test('keeps order of even numbers', () {
      expect(reArrange([4, 1, 2, 3, 6, 5]), [4, 2, 6, 1, 3, 5]);
    });

    test('returns same array if all numbers are even', () {
      expect(reArrange([2, 4, 6, 8]), [2 ,4, 6, 8]);
    });

    test('returns same array if all numbers are odd', () {
      expect(reArrange([1, 3, 5, 7]), [1, 3, 5, 7]);
    });

    test('works with empty array', () {
      expect(reArrange([]), []);
    });

    test('works with single-element array', () {
      expect(reArrange([2]), [2]);
      expect(reArrange([3]), [3]);
    });

    test('works with negative numbers', () {
      expect(reArrange([-1, -2, -3, -4, 0]), [-2, -4, 0, -1, -3]);
    });

    test('keeps relative order of odd numbers', () {
      expect(reArrange([5, 2, 7, 4, 9, 6]), [2, 4, 6, 5, 7, 9]);
    });
  });
}
