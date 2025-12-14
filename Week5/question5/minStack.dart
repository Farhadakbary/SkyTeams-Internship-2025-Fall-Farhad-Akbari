/* Farhad Akbari
12/12/2025
2. Min Stack
Problem:
Design a stack that supports:
• push(x)
• pop()
• top()
• getMin() → returns the minimum element in O(1)
 */
import 'node.dart';

class Minstack {
  MinNode? front;

  bool isEmpty() => front == null;

  void push(int value){
    if(isEmpty()){
      front =MinNode(value, value);
    }else{
      int current=front!.minValue;
      int min=value <current ?value: current;

      MinNode newNode = MinNode(value, min);
      newNode.next = front;
      front = newNode;
    }
  }
  int? pop() {
    if (isEmpty()) return null;
    int removed = front!.data;
    front = front!.next;
    return removed;
  }
 int? top() {
    if (isEmpty()) return null;
    return front!.data;
  }

  int? getMin() {
    if (isEmpty()) return null;
    return front!.minValue;
  }
}
