import 'package:sky/Week3/Question17/rightAngledTriangle.dart';
import 'package:test/test.dart';

void main() {
  test('Test with input 1 - single row', () {
    expect(rightAngledTriangle(1), equals('*\n'));
  });

  test('Test with input 3 - three rows', () {
    expect(rightAngledTriangle(3), equals('*\n**\n***\n'));
    print(rightAngledTriangle(3));
  });

  test('Test with input 4 - four rows (original example)', () {
    expect(rightAngledTriangle(4), equals('*\n**\n***\n****\n'));
  });

  test('Test with input 5 - five rows', () {
    expect(rightAngledTriangle(5), equals('*\n**\n***\n****\n*****\n'));
  });

  test('Test with input 0 - empty output', () {
    expect(rightAngledTriangle(0), equals(''));
  });

  test('Test with input 2 - two rows', () {
    expect(rightAngledTriangle(2), equals('*\n**\n'));
  });
}