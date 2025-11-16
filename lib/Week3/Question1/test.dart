import 'package:test/test.dart';
import 'countVowel.dart';

void main() {
  group('countVowels', () {
    test('Counts vowels in a normal sentence', () {
      expect(countVowels('SkyTeams Internship'), 5);
    });

    test('Counts vowels in all lowercase vowels', () {
      expect(countVowels('aeiou'), 5);
    });

    test('Counts vowels in all uppercase vowels', () {
      expect(countVowels('AEIOU'), 5);
    });
    test('Counts vowels in an empty string', () {
      expect(countVowels(''), 0);
    });
  });
}
