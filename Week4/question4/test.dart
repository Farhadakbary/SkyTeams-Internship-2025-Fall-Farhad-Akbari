import 'package:test/test.dart';
import 'elemntsInBothArrays.dart';

void main() {
  group('elementsInBothArrays Tests', () {
    test('returns elements for an arrays', () {
      expect(elementsInBothArrays([1, 2, 3], [2, 3, 4]), [2, 3]);
    });

    test('returns empty list when no elements match', () {
      expect(elementsInBothArrays([1, 2], [3, 4]), []);
    });

    test('returns all elements if arrays are identical', () {
      expect(elementsInBothArrays([1, 2, 3], [1, 2, 3]), [1, 2, 3]);
    });

    test('for duplicates in first array', () {
      expect(elementsInBothArrays([1, 2, 2, 3], [2, 3, 4]), [2, 2, 3]);
    });

    test('returns empty list if first array is empty', () {
      expect(elementsInBothArrays([], [1, 2, 3]), []);
    });

    test('works with negative numbers', () {
      expect(elementsInBothArrays([-1, -2, 0, 2], [-2, 0, 3]), [-2, 0]);
    });
  });
}
