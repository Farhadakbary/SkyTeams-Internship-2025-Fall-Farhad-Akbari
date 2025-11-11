// largest_and_smallest_test.dart
import 'package:test/test.dart';

import 'largest.dart';

void main() {
  test('Find largest and smallest of three numbers', () {
    final result = largestAndSmallest(10, 13, 17);

    expect(result['max'], equals(17));
    expect(result['min'], equals(10));
  });

  test('All numbers equal', () {
    final result = largestAndSmallest(5, 5, 5);

    expect(result['max'], equals(5));
    expect(result['min'], equals(5));
  });

  test('Negative numbers', () {
    final result = largestAndSmallest(-2, -10, -5);

    expect(result['max'], equals(-2));
    expect(result['min'], equals(-10));
  });
}
