import 'dart:collection';

void main() {
  Queue<int> queue = Queue<int>();

  queue.add(1);
  queue.add(2);
  queue.add(3);
  print("Queue بعد از Enqueue: $queue");

  int firstItem = queue.removeFirst();
  print("عنصر حذف‌شده: $firstItem");
  print("Queue بعد از Dequeue: $queue");

  int frontItem = queue.first;
  print("عنصر اول Queue: $frontItem");
}
