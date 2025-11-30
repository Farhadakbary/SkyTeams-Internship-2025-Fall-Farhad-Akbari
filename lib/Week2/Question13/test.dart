import 'package:test/test.dart';

import 'monthDays.dart';

void main() {
  test('Month 1 should return January - 31 days', () {
    expect(monthDays(1), equals('January - 31 days'));
  });

  test('Month 2 should return February - 28 or 29 days', () {
    expect(monthDays(2), equals('February - 28 or 29 days'));
  });

  test('Month 3 should returnMarch - 31 days', () {
    expect(monthDays(3), equals('March - 31 days'));
  });
  test('Month 4 should returnApril - 30 days', () {
    expect(monthDays(4), equals('April - 30 days'));
  });
  test('Month 5 should return May - 31 days', () {
    expect(monthDays(5), equals('May - 31 days'));
  });
  test('Month 6 should return June - 30 days', () {
    expect(monthDays(6), equals('June - 30 days'));
  });
  test('Month 7 should return July - 31 days', () {
    expect(monthDays(7), equals('July - 31 days'));
  });
  test('Month 8 should return August - 31 days', () {
    expect(monthDays(8), equals('August - 31 days'));
  });
  test('Month 9 should return September - 30 days', () {
    expect(monthDays(9), equals('September - 30 days'));
  });
  test('Month 10 should return October - 31 days', () {
    expect(monthDays(10), equals('October - 31 days'));
  });
  test('Month 11 should return November - 30 days', () {
    expect(monthDays(11), equals('November - 30 days'));
  });
  test('Month 12 should return December - 31 days', () {
    expect(monthDays(12), equals('December - 31 days'));
  });

  test('Invalid month should throw error', () {
    expect(() => monthDays(15), throwsArgumentError);
  });
}
