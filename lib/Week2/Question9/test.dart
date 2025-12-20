import 'package:test/test.dart';

import 'gradeCalculator.dart';

void main() {
  test('Grade 95', () {
    expect(calculateGrade(95), equals('A'));
  });

  test('Grade 85', () {
    expect(calculateGrade(85), equals('B'));
  });

  test('Grade 72', () {
    expect(calculateGrade(72), equals('C'));
  });

  test('Grade 61', () {
    expect(calculateGrade(61), equals('D'));
  });

  test('Grade 55', () {
    expect(calculateGrade(55), equals('E'));
  });

  test('Grade 40', () {
    expect(calculateGrade(40), equals('F'));
  });

  test('Test for more and less than the range and throws an error', () {
    expect(() => calculateGrade(150), throwsArgumentError);
  });
}
