import 'package:test/test.dart';
import 'largestAndSmallest.dart';

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

  test('Mix of positive and negative numbers', () {
    final result = largestAndSmallest(-3, 7, 0);
    expect(result['max'], equals(7));
    expect(result['min'], equals(-3));
  });

  test('Include zero', () {
    final result = largestAndSmallest(0, 5, -2);
    expect(result['max'], equals(5));
    expect(result['min'], equals(-2));
  });

  test('Two numbers equal, one different', () {
    final result = largestAndSmallest(8, 8, 3);
    expect(result['max'], equals(8));
    expect(result['min'], equals(3));
  });

  test('Large numbers', () {
    final result = largestAndSmallest(1000, 5000, 3000);
    expect(result['max'], equals(5000));
    expect(result['min'], equals(1000));
  });

  test('Negative and large positive numbers', () {
    final result = largestAndSmallest(-100, 0, 200);
    expect(result['max'], equals(200));
    expect(result['min'], equals(-100));
  });

  test('All zeros', () {
    final result = largestAndSmallest(0, 0, 0);
    expect(result['max'], equals(0));
    expect(result['min'], equals(0));
  });
}
