import 'package:sky/Week3/Question28/removeDuplicates.dart';
import 'package:test/test.dart';

void main() {
  group('Remove Duplicates Tests', () {
    test('Array with duplicates', () {
      expect(removeDuplicates([3, 1, 3, 5, 1]), equals([3, 1, 5]));
    });
    test('Array with duplicates', () {
      expect(removeDuplicates([3, 1, 3, 5, 1]), equals([3, 1, 5]));
      print(removeDuplicates([3, 1, 3, 5, 1]));
    });
    test('Array with all unique elements', () {
      expect(removeDuplicates([7, 2, 9, 4]), equals([7, 2, 9, 4]));
    });

    test('Array with all same elements', () {
      expect(removeDuplicates([8, 8, 8, 8]), equals([8]));
    });

    test('Empty array', () {
      expect(removeDuplicates([]), equals([]));
    });
  });
}
