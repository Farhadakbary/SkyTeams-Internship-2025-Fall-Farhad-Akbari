import 'package:test/test.dart';
import 'backSpace.dart';
void main() {
  group('backspaceCompare', () {
    test('returns true for equal strings after backspace', () {
      expect(backspaceCompare("ab#c", "ad#c"), true);
    });

    test('returns true when both become empty', () {
      expect(backspaceCompare("a##", "#a#"), true);
    });

    test('returns false for different results', () {
      expect(backspaceCompare("a#c", "b"), false);
    });

    test('handles multiple backspaces', () {
      expect(backspaceCompare("abc###", ""), true);
    });

    test('handles backspace at beginning', () {
      expect(backspaceCompare("##a", "a"), true);
    });

    test('returns false when one has extra characters', () {
      expect(backspaceCompare("bxj##tw", "bxo#j##tw"), false);
    });

    test('returns true for identical strings without backspace', () {
      expect(backspaceCompare("hello", "hello"), true);
    });

    test('returns false for same length but different characters', () {
      expect(backspaceCompare("abc", "abd"), false);
    });
  });
}
