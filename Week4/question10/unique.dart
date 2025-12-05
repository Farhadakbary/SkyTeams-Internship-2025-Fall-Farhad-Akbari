/*
 Farhad Akbari
 12/2/2025
10. Check Unique Characters
Description: Return whether a string contains only unique chars.
Example:
"hello" → Not Unique
 */
bool isUniqueString(String text) {
  if (text.isEmpty) {
    print("Text is empty");
    return false;
  }
  // using a set that  does not accept repeated elements
  final seen = <String>{};
  for (var char in text.split('')) {
    if (seen.contains(char)) {
      print("$text is NOT a unique string");
      return false;
    }
    seen.add(char);
  }
  print("$text is a UNIQUE string");
  return true;
}
