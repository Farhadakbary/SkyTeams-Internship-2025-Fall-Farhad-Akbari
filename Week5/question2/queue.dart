/* Farhad Akbari
12/9/2025
Part 2 — Queue Basics Using Linked Lists
1. Implement a Queue
• Use a linked list to create a queue class with enqueue, dequeue, front, rear, isEmpty.
2. Enqueue and Dequeue
• Enqueue [10,20,30], dequeue 1 element, print the queue.
3. Check if Queue is Empty
• Test before and after enqueueing items.
4. Get Front and Rear Values
• Print the front and rear of a queue after adding [5,15,25].
5. Reverse a Small Queue
• Reverse a queue [1,2,3] using a temporary stack/array.
 */


import '../classNode.dart';

class Queue {
  Node? head;
  Node? tail;

  bool isEmpty() {
    return head == null;
  }

  // adding element
  void enQueue(int value) {
    Node newNode = Node(value);
    if (isEmpty()) {
      head = tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  // deleting element
  int? deQueue() {
    if (isEmpty()) return null;
    int removed = head!.data;
    head = head!.next;

    return removed;
  }
  // the first element
 int? front(){
    if(isEmpty()) return null;
    return head!.data;
 }
  // the last element
  int? last(){
    if(isEmpty()) return null;
    return tail!.data;
  }
// print the queue
  void printQueue() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}