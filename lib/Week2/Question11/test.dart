import 'package:test/test.dart';

import 'calculator.dart';

void main() {
  test('Addition', () {
    expect(simpleCalculator(5, 3, '+'), equals(8.0));
  });

  test('Subtraction', () {
    expect(simpleCalculator(10, 4, '-'), equals(6.0));
  });

  test('Multiplication', () {
    expect(simpleCalculator(6, 7, '*'), equals(42.0));
  });

  test('Division', () {
    expect(simpleCalculator(12, 4, '/'), equals(3.0));
  });

  test('Division by zero throws error', () {
    expect(() => simpleCalculator(10, 0, '/'), throwsArgumentError);
  });

  test('Invalid operator throws error', () {
    expect(() => simpleCalculator(5, 2, '%'), throwsArgumentError);
  });
}
