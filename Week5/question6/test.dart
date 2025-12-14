
import 'queue.dart';

void main() {

  MyQueue q = MyQueue();

  q.push(10);
  q.push(20);
  q.push(30);

  print(q.peek());
  print(q.pop());
  print(q.peek());

  print(q.pop());
  print(q.pop());
  print(q.empty());
}
