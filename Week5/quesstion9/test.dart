import 'package:test/test.dart';
import 'adjacentDuplicates.dart';
void main() {
  group('adjacentDuplicate', () {
    test('removes simple adjacent duplicates', () {
      expect(adjacentDuplicate("abbaca"), "ca");
    });

    test('returns same string when no duplicates exist', () {
      expect(adjacentDuplicate("abcdef"), "abcdef");
    });

    test('removes all characters when all are duplicates', () {
      expect(adjacentDuplicate("aabbcc"), "");
    });

    test('handles cascading removals', () {
      expect(adjacentDuplicate("azxxzy"), "ay");
    });

    test('works with single character', () {
      expect(adjacentDuplicate("a"), "a");
    });

    test('works with empty string', () {
      expect(adjacentDuplicate(""), "");
    });

    test('handles long repeated sequence', () {
      expect(adjacentDuplicate("aaaa"), "");
    });
    test('handles long repeated sequence', () {
      expect(adjacentDuplicate("aaa"), "a");
    });

    test('is case-sensitive', () {
      expect(adjacentDuplicate("aA"), "aA");
    });

    test('handles mixed characters', () {
      expect(adjacentDuplicate("a!!bb!!a"), "");
    });
  });
}
