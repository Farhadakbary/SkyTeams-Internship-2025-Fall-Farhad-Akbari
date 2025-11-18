import 'package:sky/Week2/Question15/triangle.dart';
import 'package:test/test.dart';

void main() {
  group('Triangle Type Tests', () {

    test('Equilateral triangle', () {
      expect(triangle(2, 2, 2), equals('Equilateral'));
    });

    test('Isosceles triangle (a == b)', () {
      expect(triangle(5, 5, 3), equals('Isosceles'));
    });

    test('Isosceles triangle (b == c)', () {
      expect(triangle(4, 6, 6), equals('Isosceles'));
    });

    test('Isosceles triangle (a == c)', () {
      expect(triangle(7, 5, 7), equals('Isosceles'));
    });

    test('Scalene triangle', () {
      expect(triangle(3, 4, 5), equals('Scalene'));
    });

    test('Invalid triangle (sum of two sides equals third)', () {
      expect(triangle(1, 2, 3), equals('This is not a triangle'));
    });

    test('Invalid triangle (sum of two sides less than third)', () {
      expect(triangle(2, 3, 6), equals('This is not a triangle'));
    });

    test('Triangle with zero side', () {
      expect(triangle(0, 4, 5), equals('This is not a triangle'));
    });

    test('Triangle with all sides zero', () {
      expect(triangle(0, 0, 0), equals('This is not a triangle'));
    });

    test('Triangle with negative side', () {
      expect(triangle(-3, 4, 5), equals('This is not a triangle'));
    });

    test('Large scalene triangle', () {
      expect(triangle(1000, 2000, 2500), equals('Scalene'));
    });

    test('Large equilateral triangle', () {
      expect(triangle(9999, 9999, 9999), equals('Equilateral'));
    });

    test('Large isosceles triangle', () {
      expect(triangle(5000, 5000, 8000), equals('Isosceles'));
    });

    test('Floating point triangle', () {
      expect(triangle(3.5, 3.5, 2.0), equals('Isosceles'));
    });
  });
}
