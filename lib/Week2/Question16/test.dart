import 'package:sky/Week2/Question16/printNumbers.dart';
import 'package:test/test.dart';

void main() {
  test('This should print 1 to 100', () {
    final result = printNumbers(1, 100);
    expect(result.startsWith('1'), true);
    final parts = result.split(', ');
    expect(parts[49], '50');
  });


  test('Print numbers 5 to 10', () {
    final result = printNumbers(5, 10);
    expect(result.startsWith('5'), true);
    final parts = result.split(', ');
    expect(parts.length, 6);
    expect(parts.last, '10');
  });

  test('Print single number 7', () {
    final result = printNumbers(7, 7);
    expect(result, '7');
  });

  test('Print numbers with negative start -3 to 3', () {
    final result = printNumbers(-3, 3);
    final parts = result.split(', ');
    expect(parts.first, '-3');
    expect(parts.last, '3');
    expect(parts.length, 7);
  });

  test('Print numbers with start = 0, end = 5', () {
    final result = printNumbers(0, 5);
    final parts = result.split(', ');
    expect(parts.first, '0');
    expect(parts.last, '5');
  });

  test('Print numbers 50 to 55', () {
    final result = printNumbers(50, 55);
    final parts = result.split(', ');
    expect(parts.first, '50');
    expect(parts.last, '55');
    expect(parts.length, 6);
  });

  test('Throws error when start > end', () {
    expect(() => printNumbers(10, 5), throwsArgumentError);
  });
}
