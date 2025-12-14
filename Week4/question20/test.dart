import 'parentheses.dart';

void main() {
  print(isBalanced("{[()]}"));
  print(isBalanced("([)]"));
  print(isBalanced("(()[])"));
  print(isBalanced("{[()]"));
  print(isBalanced(")]"));
}