import 'permutations.dart';
import 'package:test/test.dart';
void main() {
  group('permutation Tests', () {
    test('generates all permutations for "abc"', () {
      final result = permutation('abc');
      final expected = ['abc', 'acb', 'bac', 'bca', 'cab', 'cba'];
      expect(result.toSet(), expected.toSet());
      expect(result.length, expected.length);
    });
    test('returns ["a"] for single character input', () {
      expect(permutation('a'), ['a']);
    });
    test('returns [""] for empty string', () {
      expect(permutation(''), ['']);
    });
    test('works with two characters', () {
      final result = permutation('xy');
      final expected = ['xy', 'yx'];
      expect(result.toSet(), expected.toSet());
      expect(result.length, expected.length);
    });

    test('handles repeated characters ("aab")', () {
      final result = permutation('aab');
      final expected = ['aab', 'aba', 'aab', 'aba', 'baa', 'baa'];
      expect(result.toSet(), expected.toSet());
      expect(result.length, expected.length);
    });

    test('works with numbers and letters combined', () {
      final result = permutation('1a');
      final expected = ['1a', 'a1'];
      expect(result.toSet(), expected.toSet());
    });
    test('works with special characters', () {
      final result = permutation('@#');
      final expected = ['@#', '#@'];
      expect(result.toSet(), expected.toSet());
    });
  });
}
