import 'package:test/test.dart';

import 'Pyramid.dart';


void main() {
  group('printPyramid Tests', () {

    test('single star', () {
      expect(printPyramid(1), '*');
    });

    test('two-level pyramid', () {
      expect(printPyramid(2), ' *\n***');
    });

    test('correct pyramid', () {
      expect(printPyramid(3), '  *\n ***\n*****');
    });

    test('correct formatting', () {
      expect(printPyramid(4), '   *\n  ***\n *****\n*******');
    });

    test('return empty string', () {
      expect(printPyramid(0), '');
    });

    test('return empty string or expected behavior', () {
      expect(printPyramid(-3), '');
    });

    test('check number of lines for number = 5', () {
      final output = printPyramid(5);
      expect(output.split('\n').length, 5);
    });

    test('last line should have 2*n - 1 stars', () {
      final n = 5;
      final output = printPyramid(n).split('\n').last;
      expect(output, '*' * (2 * n - 1));
    });

    test('each line starts with decreasing spaces', () {
      final output = printPyramid(4).split('\n');
      expect(output[0].startsWith('   '), true); // 3 spaces
      expect(output[1].startsWith('  '), true);  // 2 spaces
      expect(output[2].startsWith(' '), true);   // 1 space
      expect(output[3].startsWith(''), true);    // 0 spaces
    });

    test('pyramid width grows correctly', () {
      final output = printPyramid(3).split('\n');
      expect(output[0].trim(), '*');
      expect(output[1].trim(), '***');
      expect(output[2].trim(), '*****');
    });
  });
}
