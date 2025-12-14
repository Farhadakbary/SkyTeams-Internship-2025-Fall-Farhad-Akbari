/*
 Farhad Akbari
 12/2/2025
14. All Permutations of a String
Description: Generate all permutations.
Input: "abc" → abc, acb, bac, ...
 */
List<String> permutation(String input) {
  if (input.length <= 1) return [input];
  List<String> result = [];
  for (int i = 0; i < input.length; i++) {
    String current = input[i];
    String remaining = input.substring(0, i) + input.substring(i + 1);
    for (String sub in permutation(remaining)) {
      result.add(current + sub);
    }
  }
  return result;
}
