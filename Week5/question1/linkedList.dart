/* Farhad Akbari
12/9/2025
Part 1 — Linked List Basics
1. Create a Singly Linked List
• Create a linked list with 3 nodes [10, 20, 30] and print all elements.
2. Add a Node at the Beginning
• Insert 5 at the start → [5,10,20,30].
3. Add a Node at the End
• Append 40 → [5,10,20,30,40].
4. Delete the First Node
• Remove head → [10,20,30,40].
5. Search for a Value
• Check if 20 exists → return true/false.
 */
import '../classNode.dart';

class LinkedList {
  Node? head;

  // create linkedList
  void createList() {
    head = Node(10);
    head!.next = Node(20);
    head!.next!.next = Node(30);
  }

  // insert at the beginning of the list
  void insertAtBeginning(int value) {
    Node newNode = Node(value);
    newNode.next = head;
    head = newNode;
  }

  // insert at the end of the list
  void insertAtEnd(int value) {
    Node newNode = Node(value);

    if (head == null) {
      head = newNode;
      return;
    }

    Node? temp = head;
    while (temp!.next != null) {
      temp = temp.next;
    }
    temp.next = newNode;
  }

  // deleting from the start of list
  void deleteFirst() {
    if (head != null) {
      head = head!.next;
    }
  }

  // search for a value
  bool search(int value) {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == value) return true;
      temp = temp.next;
    }
    return false;
  }

  void printList() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
