import 'package:test/test.dart';
import 'package:sky/Week3/Question24/pascalTriangle.dart';

void main() {
  test('Test with 0 rows', () {
    expect(() => pascalTriangle(0), returnsNormally);
  });

  test('Test with 1 row', () {
    expect(() => pascalTriangle(1), returnsNormally);
  });

  test('Test with 5 rows', () {
    expect(() => pascalTriangle(5), returnsNormally);
  });

  test('Test with 10 rows', () {
    expect(() => pascalTriangle(10), returnsNormally);
  });

  test('Test with negative rows', () {
    expect(() => pascalTriangle(-1), returnsNormally);
  });

  test('Test with large number of rows', () {
    expect(() => pascalTriangle(20), returnsNormally);
  });
}
