import 'package:sky/Week3/Question27/uniqueElements.dart';
import 'package:test/test.dart';

void main() {
  group('Unique Elements Tests', () {
    test('Array with duplicates', () {
      expect(uniqueElements([3, 1, 2, 3, 4, 2]), equals([1, 2, 3, 4]));
      print(uniqueElements([3, 1, 2, 3, 4, 2]));
    });

    test('Array with all unique elements', () {
      expect(uniqueElements([5, 2, 9, 1]), equals([1, 2, 5, 9]));
      print(uniqueElements([5, 2, 9, 1]));
    });

    test('Array with all same elements', () {
      expect(uniqueElements([7, 7, 7, 7]), equals([7]));
    });
  });
}
