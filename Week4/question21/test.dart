import 'package:test/test.dart';

import 'palindromic.dart';
void main() {
  group('Longest Palindromic Substring Tests', () {
    test('basic example babad', () {
      expect(longestPalindrome("babad").length, 3);
      expect(["bab", "aba"].contains(longestPalindrome("babad")), true);
    });

    test('even palindrome cbbd', () {
      expect(longestPalindrome("cbbd"), "bb");
    });

    test('single character', () {
      expect(longestPalindrome("a"), "a");
    });

    test('empty string', () {
      expect(longestPalindrome(""), "");
    });

    test('string with no long palindrome', () {
      expect(longestPalindrome("abc"), anyOf("a", "b", "c"));
    });

    test('full palindrome', () {
      expect(longestPalindrome("racecar"), "racecar");
    });

    test('your example babxcvnmba', () {
      expect(longestPalindrome("babxcvnmba"), "bab");
    });

    test('long repeated characters', () {
      expect(longestPalindrome("aaaaaa"), "aaaaaa");
    });
  });
}
