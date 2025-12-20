import 'package:sky/week1/Question3/reverse.dart';
import 'package:test/test.dart';

void main() {
  group('reverseString', () {
    test('should reverse a normal string', () {
      expect(reverseString('dart'), equals('trad'));
    });

    test('should return empty string when input is empty', () {
      expect(reverseString(''), equals(''));
    });

    test('should handle single-character strings', () {
      expect(reverseString('a'), equals('a'));
    });
    test('Should return empty', (){
      expect(reverseString(''), equals(''));
    });
    test('should handle strings with spaces', () {
      expect(reverseString('hello world'), equals('dlrow olleh'));
    });
  });

  group('reverseList', () {
    test('should reverse a list of numbers', () {
      expect(reverseList([1, 2, 3, 4]), equals([4, 3, 2, 1]));
    });

    test('should reverse a list of strings', () {
      expect(reverseList(['a', 'b', 'c']), equals(['c', 'b', 'a']));
    });

    test('should return empty list when input is empty', () {
      expect(reverseList([]), equals([]));
    });

    test('should handle single-element list', () {
      expect(reverseList([42]), equals([42]));
    });
  });
}