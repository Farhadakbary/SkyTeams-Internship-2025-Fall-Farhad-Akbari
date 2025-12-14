import 'mergeOverlapping.dart';
import 'package:test/test.dart';

void main() {
  group('Merge Overlapping Intervals Tests', () {
    test('merges overlapping intervals', () {
      expect(
        mergeOverlapping([
          [1, 3],
          [2, 6],
          [8, 10],
        ]),
        [
          [1, 6],
          [8, 10],
        ],
      );
    });

    test('works with no overlaps', () {
      expect(
        mergeOverlapping([
          [1, 2],
          [3, 4],
          [5, 6],
        ]),
        [
          [1, 2],
          [3, 4],
          [5, 6],
        ],
      );
    });

    test('works with fully nested intervals', () {
      expect(
        mergeOverlapping([
          [1, 10],
          [2, 5],
          [3, 4],
        ]),
        [
          [1, 10],
        ],
      );
    });

    test('handles single interval', () {
      expect(
        mergeOverlapping([
          [5, 7],
        ]),
        [
          [5, 7],
        ],
      );
    });

    test('returns empty for empty input', () {
      expect(mergeOverlapping([]), []);
    });

    test('works with intervals already sorted', () {
      expect(
        mergeOverlapping([
          [1, 4],
          [4, 5],
        ]),
        [
          [1, 5],
        ],
      );
    });

    test('works when last interval merges', () {
      expect(
        mergeOverlapping([
          [1, 4],
          [5, 6],
          [6, 9],
        ]),
        [
          [1, 4],
          [5, 9],
        ],
      );
    });

    test('works with unsorted input', () {
      expect(
        mergeOverlapping([
          [8, 10],
          [1, 3],
          [2, 6],
        ]),
        [
          [1, 6],
          [8, 10],
        ],
      );
    });
  });
}
