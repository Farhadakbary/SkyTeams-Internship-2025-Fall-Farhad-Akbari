/* Farhad Akbari
12/12/2025
5. Backspace String Compare
Problem:
Given two strings s and t, return true if they are equal after interpreting # as a backspace.
Example:
Input: "ab#c", "ad#c"
Output: true
Both become "ac".
 */
bool backspaceCompare(String s, String t) {
  List<String> build(String str) {
    List<String> stack = [];
    for (var ch in str.split('')) {
      if (ch == '#') {
        if (stack.isNotEmpty) stack.removeLast();
      } else {
        stack.add(ch);
      }
    }
    return stack;
  }

  List<String> stackS = build(s);
  List<String> stackT = build(t);

  if (stackS.length != stackT.length) return false;

  for (int i = 0; i < stackS.length; i++) {
    if (stackS[i] != stackT[i]) return false;
  }

  return true;
}
void main() {
  print(backspaceCompare("ab#c", "ad#c"));
  print(backspaceCompare("a#c", "b"));
}
