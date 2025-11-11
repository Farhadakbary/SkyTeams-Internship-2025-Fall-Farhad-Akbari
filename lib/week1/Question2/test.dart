
import 'package:test/test.dart';
import 'largestNumber.dart';

void main(){
  print(largest([12,1,2]) == 12 ? 'pass🤩' : 'Fail🤣');
group('largest', (){
  test('Should find the greatest number', (){
    expect((largest([1,4,2,5,77,53,14,134])), equals(134));
  });
});

test('returns the only element for a single-item list', () {
  expect(largest([42]), equals(42));
});

test('works with all negative numbers', () {
  expect(largest([-10, -3, -50, -1]), equals(-1));
});

test('works with a mix of negative and positive numbers', () {
  expect(largest([-5, 0, 12, -3]), equals(12));
});

test('returns first occurrence of largest when there are duplicates', () {
  expect(largest([7, 7, 3, 7]), equals(7));
});
}