/*
 Farhad Akbari
 12/2/2025
12. Character Frequency Counter
Description: Count occurrences of characters.
Input: "banana" → {b:1, a:3, n:2}
 */
Map<String, int> charFrequency(String text) {
  Map<String, int> freq = {};
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (freq.containsKey(char)) {
      freq[char] = freq[char]! + 1;
    } else {
      freq[char] = 1;
    }
  }
  return freq;
}
