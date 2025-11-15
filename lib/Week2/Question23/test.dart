import 'package:sky/Week2/Question23/printFibonacci.dart';
import 'package:test/test.dart';
void main() {
  test('Fibonacci for n = 7', () {
    expect(fibonacci(7), equals([0, 1, 1, 2, 3, 5, 8]));
    print(fibonacci(7));
  });
}