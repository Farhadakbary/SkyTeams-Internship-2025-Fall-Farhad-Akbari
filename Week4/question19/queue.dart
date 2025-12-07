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
    return '[${[...stackPop.reversed, ...stackPush].join(', ')}]';
  }
}
