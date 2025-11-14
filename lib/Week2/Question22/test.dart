import 'package:sky/Week2/Question22/printEven.dart';
import 'package:test/test.dart';
void main() {
  test('Even numbers between 1 and 10', () {
    expect(printEvenNumbers(1, 10), equals('2, 4, 6, 8, 10'));
  });

  test('Even numbers between 5 and 15', () {
    expect(printEvenNumbers(5, 15), equals('6, 8, 10, 12, 14'));
  });
  print(printEvenNumbers(5, 15));
}