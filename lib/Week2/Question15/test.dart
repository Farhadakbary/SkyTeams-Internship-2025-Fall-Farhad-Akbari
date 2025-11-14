import 'package:sky/Week2/Question15/triangle.dart';
import
'package:test/test.dart';
void main(){
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

    });
  }