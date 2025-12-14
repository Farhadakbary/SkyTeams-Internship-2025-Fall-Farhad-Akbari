/* Farhad Akbari
12/12/2025
1. Valid Parentheses
Problem:
Given a string containing only '(' , ')' , '{' , '}' , '[' , ']', determine if the string
is valid.
A valid string must have brackets closed in the correct order.
Example:
Input: s = "()[]{}"
Output: true
Input: s = "(]"
Output: false
 */
bool isValidParentheses(String input) {
  List<String> stack = [];
  Map<String, String> pairs = {
    ')': '(',
    '}': '{',
    ']': '['
  };
  for (var char in input.split('')) {
    if (pairs.containsValue(char)) {
      stack.add(char);

    } else if (pairs.containsKey(char)) {
      if (stack.isEmpty || stack.last != pairs[char]) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isValidParentheses('()[]{}'));
  print(isValidParentheses('(]'));
  print(isValidParentheses('([])'));
}
