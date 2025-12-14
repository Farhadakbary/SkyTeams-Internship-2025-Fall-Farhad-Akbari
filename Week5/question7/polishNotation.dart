/* Farhad Akbari
12/12/2025
4. Evaluate Reverse Polish Notation (RPN)
Problem:
Evaluate an expression in Reverse Polish Notation.
Valid operators: + - * /.
Example:
Input: ["2","1","+","3","*"]
Output: 9
Explanation: (2 + 1) * 3
 */
int evaluatePN(List<String> strings){
List<int> stack=[];
for(var string in strings){
  if (string == '+' || string == '-' || string == '*' || string == '/') {
    int b = stack.removeLast();
    int a = stack.removeLast();
    switch (string) {
      case '+':
        stack.add(a + b);
        break;
      case '-':
        stack.add(a - b);
        break;
      case '*':
        stack.add(a * b);
        break;
      case '/':
        stack.add(a ~/ b);
        break;
    }
  }
  else {
    stack.add(int.parse(string));
  }
}

return stack.last;
}
void main() {
  List<String> strings = ["2","1","+","3","*"];
  print(evaluatePN(strings));
}
