import 'stack.dart';

void main() {
  Stack stack = Stack();
  print('Is stack empty? ${stack.isEmpty()}');

  stack.push(10);
  print('After pushing 10:');
  stack.printStack();

  stack.push(20);
  print('After pushing 20:');
  stack.printStack();

  stack.push(30);
  print('After pushing 30:');
  stack.printStack();

  print('\nPop 1 element: ${stack.pop()}');
  print('Stack after popping:');
  stack.printStack();

  print('Is stack empty? ${stack.isEmpty()}');

  Stack stack2 = Stack();
  stack2.push(5);
  stack2.push(15);
  stack2.push(25);
  print('Stack elements:');
  stack2.printStack();
  print('Top element: ${stack2.head()}');

  stack2.pop();
  print('Stack after popping top:');
  stack2.printStack();
  print('New top element: ${stack2.head()}');

  Stack stack3 = Stack();
  stack3.push(1);
  stack3.push(2);
  stack3.push(3);
  print('Original stack:');
  stack3.printStack();

  Stack reversed = stack3.reversedStack(stack3);
  print('Reversed stack:');
  reversed.printStack();

}
