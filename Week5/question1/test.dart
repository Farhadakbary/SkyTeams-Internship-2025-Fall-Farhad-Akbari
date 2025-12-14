import '../classNode.dart';
import 'linkedList.dart';
import 'package:test/test.dart';

void main() {
  group('LinkedList Tests', () {
    late LinkedList list;

    setUp(() {
      list = LinkedList();
    });

    test('Create list should set up 10 -> 20 -> 30', () {
      list.createList();

      expect(list.head!.data, equals(10));
      expect(list.head!.next!.data, equals(20));
      expect(list.head!.next!.next!.data, equals(30));
      expect(list.head!.next!.next!.next, isNull);
    });

    test('Insert at beginning should put new value at head', () {
      list.createList();
      list.insertAtBeginning(5);

      expect(list.head!.data, equals(5));
      expect(list.head!.next!.data, equals(10));
    });

    test('Insert at end should add new node at the last position', () {
      list.createList();
      list.insertAtEnd(40);

      Node? temp = list.head;
      while (temp!.next != null) {
        temp = temp.next;
      }

      expect(temp.data, equals(40));
    });

    test('Delete first should remove the head element', () {
      list.createList();
      list.deleteFirst();

      expect(list.head!.data, equals(20));
      expect(list.head!.next!.data, equals(30));
    });

    test('Search should return index of existing value', () {
      list.createList();

      expect(list.search(10), equals(true));
      expect(list.search(20), equals(true));
      expect(list.search(30), equals(true));
    });

    test('Search should return -1 for non-existing value', () {
      list.createList();

      expect(list.search(99), equals(false));
    });

    test('PrintList should run without throwing exceptions', () {
      list.createList();
      list.printList();
    });
  });
}
