import 'package:sky/Week3/Question12/palindromeNumber.dart';
import 'package:test/test.dart';
void main(){


  test('121 is not palindrome', () {
    expect(isPalindrome(121), true);
  });
  test('123 is not palindrome', () {
    expect(isPalindrome(123), false);
  });

  test('0 is palindrome', () {
    expect(isPalindrome(0), true);
  });

  test('-121 is not palindrome (negative)', () {
    expect(isPalindrome(-121), false);
  });

}