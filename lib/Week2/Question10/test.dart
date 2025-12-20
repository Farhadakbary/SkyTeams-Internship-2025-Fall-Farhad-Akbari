import 'package:test/test.dart';
import 'leapYear.dart';

void main() {
  test('Year 2000 should be Leap year', () {
    expect(leapYear(2000), equals('Leap year'));
  });

  test('Year 1900 should be Not leap year', () {
    expect(leapYear(1900), equals('Not leap year'));
  });

  test('Year 2024 should be Leap year', () {
    expect(leapYear(2024), equals('Leap year'));
  });

  test('Year 2023 should be Not leap year', () {
    expect(leapYear(2023), equals('Not leap year'));
  });

  test(' error for negative years', () {
    expect(() => leapYear(-100), throwsArgumentError);
  });
}
