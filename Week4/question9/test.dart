import 'package:test/test.dart';
import 'compressString.dart';
void main() {
  group('compressString Tests', () {
    test('compresses a string with repeated characters', () {
      expect(compressString('aabcccccaaa'), 'a2b1c5a3');
    });

    test('compresses a string with single characters', () {
      expect(compressString('abcd'), 'a1b1c1d1');
    });

    test('compresses a string with all same characters', () {
      expect(compressString('aaaaa'), 'a5');
    });

    test('returns empty string for empty input', () {
      expect(compressString(''), '');
    });

    test('compresses string with alternating characters', () {
      expect(compressString('ababab'), 'a1b1a1b1a1b1');
    });

    test('compresses string with numbers and letters', () {
      expect(compressString('aa11bb22'), 'a212b222');
    });

    test('compresses string with special characters', () {
      expect(compressString('@@!!##'), '@2!2#2');
    });

    test('compresses string with mixed case', () {
      expect(compressString('aaAAaa'), 'a2A2a2');
    });
  });
}
