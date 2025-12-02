/*
 Farhad Akbari
 12/2/2025
13. String Pattern Matching ("abba")
Description: Check if sentence follows the pattern.
Example: "dog cat cat dog" → True
 */
bool pattern(String pattern, String sentence) {
  List<String> words = sentence.split(' ');
  if (pattern.length != words.length) return false;

  Map<String, String> charToWord = {};
  Map<String, String> wordToChar = {};
  for (int i = 0; i < pattern.length; i++) {
    String char = pattern[i];
    String word = words[i];
    if (!charToWord.containsKey(char)) {
      charToWord[char] = word;
    } else if (charToWord[char] != word) {
      print('$sentence is not a pattern so its: false');
      return false;
    }
    if (!wordToChar.containsKey(word)) {
      wordToChar[word] = char;
    } else if (wordToChar[word] != char) {
      print('$sentence is not a pattern so its: false');
      return false;
    }
  }
  print(' $sentence is a pattern so its: true');
  return true;
}
