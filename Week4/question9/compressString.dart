/*
 Farhad Akbari
 12/2/2025
9. String Compression
Description: Compress using counts of consecutive characters.
Example:
"aabcccccaaa" → "a2b1c5a3"
 */
String compressString(String input) {
  if (input.isEmpty) return "";
  String result = "";
  int count = 1;
  for (int i = 1; i < input.length; i++) {
    if (input[i] == input[i - 1]) {
      count++;
    } else {
      result += "${input[i - 1]}$count";
      count = 1;
    }
  }
  result += "${input[input.length - 1]}$count";
  return result;
}
