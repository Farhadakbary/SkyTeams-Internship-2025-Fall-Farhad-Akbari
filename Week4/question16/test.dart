import 'package:test/test.dart';

import 'matrix.dart';

void main() {
  group('Matrix Multiplication Tests', () {
    test('Multiplies 2x2 matrices correctly', () {
      var matrixA = [
        [1, 2],
        [3, 4],
      ];
      var matrixB = [
        [5, 6],
        [7, 8],
      ];
      var expected = [
        [19, 22],
        [43, 50],
      ];
      expect(matrixMultiplication(matrixA, matrixB), equals(expected));
    });

    test('Throws error when matrices are incompatible', () {
      var matrixA = [
        [1, 2, 3],
        [4, 5, 6],
      ];
      var matrixB = [
        [1, 2],
        [3, 4],
      ];
      expect(() => matrixMultiplication(matrixA, matrixB), throwsArgumentError);
    });

    test('Multiplies 1x1 matrices', () {
      var matrixA = [
        [7],
      ];
      var matrixB = [
        [3],
      ];
      var expected = [
        [21],
      ];
      expect(matrixMultiplication(matrixA, matrixB), equals(expected));
    });

    test('Multiplies 2x3 and 3x2 matrices', () {
      var matrixA = [
        [1, 2, 3],
        [4, 5, 6],
      ];
      var matrixB = [
        [7, 8],
        [9, 10],
        [11, 12],
      ];
      var expected = [
        [58, 64],
        [139, 154],
      ];
      expect(matrixMultiplication(matrixA, matrixB), equals(expected));
    });
  });
}
