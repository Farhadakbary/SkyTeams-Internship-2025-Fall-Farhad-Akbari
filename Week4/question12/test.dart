import 'package:test/test.dart';
import 'package:test/scaffolding.dart';
import 'charFrequency.dart';

void main() {
  group('charFrequency Tests', () {
    test('counts characters in a normal string', () {
      expect(charFrequency('hello'), {'h': 1, 'e': 1, 'l': 2, 'o': 1});
    });

    test('returns empty map for empty string', () {
      expect(charFrequency(''), {});
    });

    test('counts repeated characters correctly', () {
      expect(charFrequency('aaabbc'), {'a': 3, 'b': 2, 'c': 1});
    });

    test('counts numbers and letters', () {
      expect(charFrequency('a1b2a1'), {'a': 2, '1': 2, 'b': 1, '2': 1});
    });

    test('counts special characters', () {
      expect(charFrequency('@@!!##'), {'@': 2, '!': 2, '#': 2});
    });

    test('is case-sensitive', () {
      expect(charFrequency('aAaA'), {'a': 2, 'A': 2});
    });

    test('works with single character string', () {
      expect(charFrequency('x'), {'x': 1});
    });
  });
}
