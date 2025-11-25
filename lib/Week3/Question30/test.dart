import 'package:test/test.dart';
import 'findMissingNumber.dart';

void main() {
  test('missing middle number', () {
    expect(findMissingNumber([1, 2, 4, 5]), equals(3));
  });
  test('Missing last number', () {
    expect(findMissingNumber([1, 2, 3, 4, 5]), equals(6));
  });
  test('Array with one number', () {
    expect(findMissingNumber([1]), equals(2));
  });
  test('Missing first number', () {
    expect(findMissingNumber([2, 3, 4, 5]), equals(1));
  });
  test('Array not sorted', () {
    expect(findMissingNumber([4, 1, 3, 2]), equals(5));
  });
}
