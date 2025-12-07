/*
 Farhad Akbari
 12/5/2025
19. Implement a Queue Using Two Stacks
 */
class QueueUsingStacks<T> {
  List<T> stackPush = [];
  List<T> stackPop = [];

  void enqueue(T item) {
    stackPush.add(item);
  }

  T dequeue() {
    if (stackPop.isEmpty) {
      if (stackPush.isEmpty) {
        throw StateError('Queue is empty');
      }
      while (stackPush.isNotEmpty) {
        stackPop.add(stackPush.removeLast());
      }
    }
    return stackPop.removeLast();
  }

  T peek() {
    if (stackPop.isEmpty) {
      if (stackPush.isEmpty) {
        throw StateError('Queue is empty');
      }
      while (stackPush.isNotEmpty) {
        stackPop.add(stackPush.removeLast());
      }
    }
    return stackPop.last;
  }

  bool isEmpty() {
    return stackPush.isEmpty && stackPop.isEmpty;
  }

  @override
  String toString() {
    String result = '[';
    for (int i = stackPop.length - 1; i >= 0; i--) {
      result += stackPop[i].toString();
      if (i != 0 || stackPush.isNotEmpty) result += ', ';
    }
    for (int i = 0; i < stackPush.length; i++) {
      result += stackPush[i].toString();
      if (i != stackPush.length - 1) result += ', ';
    }
    result += ']';
    return result;
  }
}
