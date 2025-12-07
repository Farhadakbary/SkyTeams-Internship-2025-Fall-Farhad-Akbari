/*
 Farhad Akbari
 12/5/2025
18. Implement a Stack (Array-Based)
Operations: push, pop, peek, isEmpty.
stack is LIFO
 */
class Stack<T> {
  late List<T?> items;
  int top = -1;

  Stack(int capacity) {
    items = List.filled(capacity, null);
  }

  bool isEmpty() {
    return top == -1;
  }

  bool isFull() {
    return top == items.length - 1;
  }

  void push(T value) {
    if (isFull()) {
      throw StateError("Stack overflow");
    }
    top++;
    items[top] = value;
  }

  T pop() {
    if (isEmpty()) {
      throw StateError("Stack underflow");
    }
    T? value = items[top];
    items[top] = null;
    top--;
    return value as T;
  }

  T peek() {
    if (isEmpty()) {
      throw StateError("Stack is empty");
    }
    return items[top] as T;
  }

  @override
  String toString() {
    if (isEmpty()) return "[]";

    String s = "[";
    for (int i = 0; i <= top; i++) {
      s += "${items[i]}";
      if (i != top) s += ", ";
    }
    s += "]";
    return s;
  }
}
