/* Farhad Akbari
12/9/2025
Part 3 — Stack Basics Using Arrays or Linked Lists
1. Implement a Stack
• Use an array or linked list to create a stack class with push(x), pop(), top(),
isEmpty(), and size().
2. Push and Pop
• Push [10, 20, 30] onto the stack, then pop 1 element.
• Print the stack after each operation.
3. Check if Stack is Empty
• Test the stack before and after adding items using isEmpty().
4. Get Top Element
• Print the top element after pushing [5, 15, 25].
• Pop and check the top again.
5. Reverse a Small Stack
• Reverse a stack [1, 2, 3] using a temporary stack or array.
• Print the reversed stack.
 */
import '../classNode.dart';

class Stack {
  Node? front;

  // checking for empty stack
  bool isEmpty() {
    return front == null;
  }

  // inserting element
  void push(int value) {
    Node newNode = Node(value);
    newNode.next = front;
    front = newNode;
  }

  // deleting element
  int? pop() {
    if (isEmpty()) return null;
    int removed = front!.data;
    front = front!.next;
    return removed;
  }

  // get top element
  int? head() {
    if (isEmpty()) return null;
    return front!.data;
  }
  Stack reversedStack(Stack original){
    Stack reverse=Stack();
    Stack temp=Stack();
  while(!original.isEmpty()){
    temp.push(original.pop()!);
  }
  while(!temp.isEmpty()){
    reverse.push(temp.pop()!);
  }
  return reverse;
  }

  void printStack() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

}
