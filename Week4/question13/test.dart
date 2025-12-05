import 'package:test/test.dart';
import 'stringPattern.dart';

void main() {
  group('isPattern Tests', () {
    test('returns true for valid pattern match', () {
      expect(isPattern('abba', 'dog cat cat dog'), true);
      expect(isPattern('abc', 'one two three'), true);
      expect(isPattern('xyz', 'apple banana cherry'), true);
    });

    test('returns false for mismatched pattern', () {
      expect(isPattern('abba', 'dog cat cat fish'), false);
      expect(isPattern('abc', 'one two two'), false);
    });

    test('returns false when pattern and sentence lengths differ', () {
      expect(isPattern('ab', 'dog cat cat'), false);
      expect(isPattern('abc', 'one two'), false);
    });

    test('handles repeated words correctly', () {
      expect(isPattern('aaaa', 'dog dog dog dog'), true);
      expect(isPattern('aaaa', 'dog dog dog cat'), false);
    });

    test('works with single-character patterns', () {
      expect(isPattern('a', 'dog'), true);
      expect(isPattern('a', 'cat'), true);
    });

    test('returns false for empty pattern and non-empty sentence', () {
      expect(isPattern('', 'dog'), false);
    });

    test('handles numbers and symbols as words', () {
      expect(isPattern('ab', '1 !'), true);
      expect(isPattern('ab', '1 1'), false);
    });
  });
}
