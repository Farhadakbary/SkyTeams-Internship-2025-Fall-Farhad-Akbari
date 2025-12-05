import 'package:test/test.dart';
import 'rotate.dart';
void main() {
  group('rotateRight Tests', () {
    test('rotates array by 1', () {
      expect(rotateRight([1, 2, 3, 4], 1), [4, 1, 2, 3]);
      print(rotateRight([1,2,3,4], 1));
    });

    test('rotates array by 2', () {
      expect(rotateRight([1, 2, 3, 4], 2), [3, 4, 1, 2]);
    });

    test('rotates array by 0 (no rotation)', () {
      expect(rotateRight([1, 2, 3], 0), [1, 2, 3]);
    });

    test('rotates array by length (full rotation)', () {
      expect(rotateRight([1, 2, 3, 4], 4), [1, 2, 3, 4]);
    });

    test('rotates array by more than length', () {
      expect(rotateRight([1, 2, 3, 4], 6), [3, 4, 1, 2]);
    });

    test('rotates single-element array', () {
      expect(rotateRight([5], 3), [5]);
    });

    test('rotates empty array', () {
      expect(rotateRight([], 2), []);
    });

    test('rotates array with negative numbers', () {
      expect(rotateRight([-1, -2, -3, -4], 1), [-4, -1, -2, -3]);
    });
  });
}
