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

// contains methode


String characterChecker(String char) {
  if (char.length != 1) {
    throw ArgumentError('Enter only one character');
  }
// contain methode
  bool myContains(String source, String target) {
    for (int i = 0; i < source.length; i++) {
      if (source[i] == target) {
        return true;
      }
    }
    return false;
  }

  String character = char.toLowerCase();

  if (myContains('aeiou', character)) {
    return 'Vowel';
  } else if (myContains('bcdfghjklmnpqrstvwyxz', character)) {
    return 'Consonant';
  } else if (myContains('0123456789', character)) {
    return 'Number';
  } else {
    return 'Special Character';
  }
}
