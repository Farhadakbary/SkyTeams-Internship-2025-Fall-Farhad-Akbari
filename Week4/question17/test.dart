import 'stringAbbreviation.dart';
import 'package:test/test.dart';
void main() {
  group('Abbreviation Tests', () {

    test('Returns correct initials for a normal sentence', () {
      String sentence = "Farhad Akbari";
      String expected = "F A";
      expect(abbreviation(sentence), equals(expected));
    });

    test('Handles extra spaces correctly', () {
      String sentence = "  Dart   Programming  Language  ";
      String expected = "D P L";
      expect(abbreviation(sentence), equals(expected));
    });

    test('Returns single initial for one word', () {
      String sentence = "Flutter";
      String expected = "F";
      expect(abbreviation(sentence), equals(expected));
    });

    test('Returns empty string for empty input', () {
      String sentence = "";
      String expected = "";
      expect(abbreviation(sentence), equals(expected));
    });

    test('Ignores empty words caused by multiple spaces', () {
      String sentence = "  a   b  c ";
      String expected = "a b c";
      expect(abbreviation(sentence), equals(expected));
    });

  });
}
