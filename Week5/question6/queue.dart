/* Farhad Akbari
12/12/2025
3. Implement Queue Using Stacks
Problem:
Implement a queue using two stacks.
Operations:
• push(x)
• pop() → _transfers front
• peek() → returns front
• empty()
 */


import '../question3/stack.dart';

class MyQueue{
  Stack inStack = Stack();
  Stack outStack = Stack();

  void push(int x){
    inStack.push(x);
  }

  void _transfer(){
    while(!inStack.isEmpty()){
      outStack.push(inStack.pop()!);
    }
  }
  int? pop(){
  if(outStack.isEmpty()){
  _transfer();
  }
  return outStack.pop();
  }
  int? peek(){
    if (outStack.isEmpty()) {
      _transfer();
    }
    return outStack.head();
  }
  bool empty() {
    return inStack.isEmpty() && outStack.isEmpty();
  }
}