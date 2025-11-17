import 'package:sky/Week2/Question1/swap.dart';
import 'package:test/test.dart';

void main() {
  test('swapAandB correctly swaps two numbers (10,5)', () {
    int a = 10;
    int b = 5;
    int result = swapAandB(a, b);
    expect(result, equals(10));
  });

  test('swapAandB correctly swaps two numbers (-5,5)', () {
    expect(swapAandB(-5, 5), equals(-5));
  });

  test('swapAandB correctly swaps two numbers (0,0)', () {
    expect(swapAandB(0, 0), equals(0));
  });

  test('swapAandB correctly swaps two numbers (71,475467)', () {
    expect(swapAandB(71, 475467), equals(71));
  });

  test('swapAandB with negative numbers (-10,-20)', () {
    expect(swapAandB(-10, -20), equals(-10));
  });

  test('swapAandB with mix negative and positive (-1,1)', () {
    expect(swapAandB(-1, 1), equals(-1));
  });

  test('swapAandB with large numbers (999999,1000000)', () {
    expect(swapAandB(999999, 1000000), equals(999999));
  });

  test('swapAandB with one zero (0,50)', () {
    expect(swapAandB(0, 50), equals(0));
  });

  test('swapAandB with equal numbers (7,7)', () {
    expect(swapAandB(7, 7), equals(7));
  });
}
