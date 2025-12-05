/*
 Farhad Akbari
 12/2/2025
13. String Pattern Matching ("abba")
Description: Check if sentence follows the pattern.
Example: "dog cat cat dog" → True
 */
bool isPattern(String pattern, String sentence) {
  List<String> words = sentence.split(' ');
  if (pattern.length != words.length) return false;
  Map<String, String> charToWord = {};
  Map<String, String> wordToChar = {};
  for (int i = 0; i < pattern.length; i++) {
    String char = pattern[i];
    String word = words[i];
    if (charToWord.containsKey(char)) {
      if (charToWord[char] != word) return false;
    } else {
      charToWord[char] = word;
    }
    if (wordToChar.containsKey(word)) {
      if (wordToChar[word] != char) return false;
    } else {
      wordToChar[word] = char;
    }
  }
  return true;
}
