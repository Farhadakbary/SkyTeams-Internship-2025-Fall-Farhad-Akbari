import 'binarySearch.dart';
import 'package:test/test.dart';
void main() {
  group('binarySearch Tests', () {
    test('returns 1 when target is present in the middle', () {
      expect(binarySearch([1, 3, 5, 7, 9], 5), 1);
    });

    test('returns 1 when target is the first element', () {
      expect(binarySearch([1, 2, 3, 4], 1), 1);
    });

    test('returns 1 when target is the last element', () {
      expect(binarySearch([10, 20, 30, 40], 40), 1);
    });

    test('returns -1 when target is not in the array', () {
      expect(binarySearch([1, 2, 3, 4, 5], 6), -1);
    });

    test('works with empty array', () {
      expect(binarySearch([], 5), -1);
    });

    test('works with single-element array', () {
      expect(binarySearch([5], 5), 1);
      expect(binarySearch([5], 3), -1);
    });

    test('works with negative numbers', () {
      expect(binarySearch([-10, -5, 0, 5, 10], -5), 1);
      expect(binarySearch([-10, -5, 0, 5, 10], -3), -1);
    });

    test('works with larger array', () {
      List<int> arr = List.generate(1000, (i) => i * 2); // 0,2,4,...1998
      expect(binarySearch(arr, 100), 1);
      expect(binarySearch(arr, 1999), -1);
    });
  });
}
