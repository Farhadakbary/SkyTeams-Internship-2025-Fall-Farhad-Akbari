import 'package:test/test.dart';
import 'queue.dart';

void main() {
  group('Queue Tests', () {
    late Queue queue;

    setUp(() {
      queue = Queue();
    });

    test('Queue should be empty initially', () {
      expect(queue.isEmpty(), true);
    });

    test('Enqueue should add elements to the queue', () {
      queue.enQueue(10);
      queue.enQueue(20);
      queue.enQueue(30);

      expect(queue.isEmpty(), false);
      expect(queue.front(), equals(10));
      expect(queue.last(), equals(30));
    });

    test('Dequeue should remove elements in FIFO order', () {
      queue.enQueue(5);
      queue.enQueue(15);
      queue.enQueue(25);

      expect(queue.deQueue(), equals(5));
      expect(queue.deQueue(), equals(15));
      expect(queue.deQueue(), equals(25));
      expect(queue.deQueue(), isNull);   // queue now empty
    });

    test('Front should return the first element', () {
      queue.enQueue(100);
      queue.enQueue(200);

      expect(queue.front(), equals(100));
    });

    test('Last should return the last element', () {
      queue.enQueue(7);
      queue.enQueue(9);
      queue.enQueue(11);

      expect(queue.last(), equals(11));
    });

    test('PrintQueue should not crash', () {
      queue.enQueue(1);
      queue.enQueue(2);
      queue.enQueue(3);

      // Just verifying it runs without errors
      queue.printQueue();
    });
  });
}
