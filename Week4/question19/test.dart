import 'queue.dart';
void main() {
  var queue = QueueUsingStacks<int>();

  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  print(queue);
  print(queue.peek());

  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.isEmpty());

  queue.enqueue(40);
  print(queue);
}
