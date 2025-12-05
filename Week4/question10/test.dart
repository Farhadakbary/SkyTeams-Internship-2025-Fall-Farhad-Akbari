import 'package:test/test.dart';
import 'unique.dart';
void main() {
  group('isUniqueString Tests', () {
    test('returns false for empty string', () {
      expect(isUniqueString(''), false);
    });

    test('returns true for unique characters', () {
      expect(isUniqueString('abcd'), true);
    });

    test('returns false for repeated characters', () {
      expect(isUniqueString('aabc'), false);
    });

    test('returns true for single character', () {
      expect(isUniqueString('a'), true);
    });

    test('returns false for long repeated characters', () {
      expect(isUniqueString('hello'), false);
    });

    test('returns true for completely unique long string', () {
      expect(isUniqueString('abcdefghi'), true);
    });
  });
}
