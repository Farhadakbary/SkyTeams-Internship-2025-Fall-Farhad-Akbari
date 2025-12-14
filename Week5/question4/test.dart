import 'package:test/test.dart';
import 'parentheses.dart';

void main() {
  group('isValidParentheses', () {
    test('returns true for simple valid parentheses', () {
      expect(isValidParentheses("()"), true);
    });

    test('returns true for multiple valid types', () {
      expect(isValidParentheses("()[]{}"), true);
    });

    test('returns false for mismatched types', () {
      expect(isValidParentheses("(]"), false);
    });

    test('returns false for wrong order', () {
      expect(isValidParentheses("([)]"), false);
    });

    test('returns true for nested valid parentheses', () {
      expect(isValidParentheses("{[()]}"), true);
    });

    test('returns false for only opening brackets', () {
      expect(isValidParentheses("((("), false);
    });

    test('returns false for only closing brackets', () {
      expect(isValidParentheses("]]]"), false);
    });

    test('returns true for empty string', () {
      expect(isValidParentheses(""), true);
    });

    test('returns false when an extra character remains', () {
      expect(isValidParentheses("({[]}"), false);
    });
  });
}
