import 'package:sky/Week2/Question1/swap.dart';
import 'package:test/test.dart';

void main() {
  test('swapAandB correctly swaps two numbers', () {
    int a = 10;
    int b = 5;

    int result = swapAandB(a, b);

    expect(result, equals(10));
  });
}