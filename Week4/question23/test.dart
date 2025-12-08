import 'package:test/test.dart';

import 'topKfrequent.dart';
void main() {
  group('Top K Frequent Elements Tests', () {
    test('returns top 2 frequent elements', () {
      var result = topKFrequents([1, 1, 1, 2, 2, 3], 2);
      expect(result, containsAll([1, 2]));
      expect(result.length, 2);
    });

    test('returns top 1 frequent element', () {
      expect(topKFrequents([1, 1, 2, 2, 2, 3], 1), [2]);
    });

    test('works when k = number of unique elements', () {
      var result = topKFrequents([1, 2, 3, 4], 4);
      expect(result.toSet(), {1, 2, 3, 4});
    });

    test('works when k > number of unique elements', () {
      var result = topKFrequents([1, 1, 2], 5);
      expect(result.toSet(), {1, 2});
    });

    test('works for array with all identical elements', () {
      expect(topKFrequents([5, 5, 5, 5], 3), [5]);
    });

    test('works for empty array', () {
      expect(topKFrequents([], 2), []);
    });

    test('works with negative numbers', () {
      var result = topKFrequents([-1, -1, -2, -3, -2, -2], 2);
      expect(result.toSet(), {-1, -2});
    });

    test('returns empty if k = 0', () {
      expect(topKFrequents([1, 2, 3], 0), []);
    });
    test('handles ties in frequency', () {
      var result = topKFrequents([1, 1, 2, 2, 3, 3], 2);
      expect(result.length, 2);
      expect(result.toSet().intersection({1, 2, 3}).length, 2);
    });
  });
}