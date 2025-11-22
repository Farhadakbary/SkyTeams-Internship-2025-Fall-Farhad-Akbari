import 'package:sky/Week3/Question24/pascalTriangle.dart';
import 'package:test/test.dart';

void main() {
  group('Pascal Triangle Tests', () {
    test('1 row', () {
      expect(pascalTriangle(1), equals([
        [1],
      ]));
    });

    test('2 rows', () {
      expect(pascalTriangle(2), equals([
        [1],
        [1, 1],
      ]));
    });

    test('3 rows', () {
      expect(pascalTriangle(3), equals([
        [1],
        [1, 1],
        [1, 2, 1],
      ]));
      print(pascalTriangle(3));
    });

    test('4 rows', () {
      expect(pascalTriangle(4), equals([
        [1],
        [1, 1],
        [1, 2, 1],
        [1, 3, 3, 1],
      ]));
    });

    test('5 rows', () {
      expect(pascalTriangle(5), equals([
        [1],
        [1, 1],
        [1, 2, 1],
        [1, 3, 3, 1],
        [1, 4, 6, 4, 1],
      ]));
    });

    test('0 rows → empty list', () {
      expect(pascalTriangle(0), equals([]));
    });

    test('6 rows last row check only', () {
      var result = pascalTriangle(6);
      expect(result[5], equals([1, 5, 10, 10, 5, 1]));
    });
  });
}
