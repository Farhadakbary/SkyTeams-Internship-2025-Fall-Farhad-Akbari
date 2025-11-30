/* Farhad Akbari
Week 2
11/12/2025
14. Check character type
Description: Input a character and determine if it’s a vowel, consonant, digit, or special symbol.
Example:
Input:
a
Output:
Vowel
 */
String characterChecker(String ch) {
  if (ch.length != 1) {
    throw ArgumentError('Enter only one character');
  }

  String character = ch.toLowerCase();

  String vowels = "aeiou";
  String consonants = "bcdfghjklmnpqrstvwxyz";
  String numbers = "0123456789";

  bool myContains(String source, String target) {
    for (int i = 0; i < source.length; i++) {
      if (source[i] == target) {
        return true;
      }
    }
    return false;
  }

  if (myContains(vowels, character)) {
    return "Vowel";
  } else if (myContains(consonants, character)) {
    return "Consonant";
  } else if (myContains(numbers, character)) {
    return "Number";
  } else {
    return "Special Character";
  }
}

