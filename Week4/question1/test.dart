import 'package:test/test.dart';
import 'secondLargest.dart';

void main() {
  group('secondLargest Function Tests', () {
    test('throws ArgumentError for lists with less than 2 elements', () {
      expect(() => secondLargest([5]), throwsA(isA<ArgumentError>()));
      expect(() => secondLargest([]), throwsA(isA<ArgumentError>()));
    });
    test('returns correct second largest in normal list', () {
      expect(secondLargest([10, 5, 8, 20, 3]), 10);
    });
    test('works when largest value comes first', () {
      expect(secondLargest([50, 20, 10, 5]), 20);
    });
    test('works when largest value comes last', () {
      expect(secondLargest([10, 5, 8, 2, 50]), 10);
    });
    test('ignores duplicates of the largest number', () {
      expect(secondLargest([9, 9, 9, 3, 9]), 3);
    });
    test('works with all negative numbers', () {
      expect(secondLargest([-10, -3, -20, -5]), -5);
    });
    test('works with mixed negative and positive numbers', () {
      expect(secondLargest([-1, 0, 5, 3]), 3);
    });
    test('correct result when the first two elements are reversed', () {
      expect(secondLargest([3, 10, 5, 8]), 8);
    });
    test('works when second largest is repeated', () {
      expect(secondLargest([7, 4, 4, 1]), 4);
    });
  });
}
