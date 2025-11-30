import 'package:test/test.dart';

import 'arraysEqual.dart';

void main() {
  group('Arrays Equal Tests', () {
    test('Equal arrays', () {
      expect(arraysEqual([1, 2, 3], [1, 2, 3]), isTrue);
    });

    test('Different length arrays', () {
      expect(arraysEqual([1, 2, 3], [1, 2]), isFalse);
    });

    test('Same length but different elements', () {
      expect(arraysEqual([4, 5, 6], [4, 5, 7]), isFalse);
    });

    test('Empty arrays', () {
      expect(arraysEqual([], []), isTrue);
    });
  });
}
