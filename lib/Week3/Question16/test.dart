import 'package:sky/Week3/Question16/printFibonacci.dart';
import 'package:test/test.dart';
void main() {
  test('Fibonacci for n = 7', () {
    expect(printFibonacci(7), equals([0, 1, 1, 2, 3, 5, 8]));
    print(printFibonacci(7));
  });
  test('Fibonacci for 1', (){
    expect(printFibonacci(1), equals([0]));
    print(printFibonacci(1));
  });
  test('Fibonacci for 2', (){
    expect(printFibonacci(2), equals([0,1]));
    print(printFibonacci(2));
  });
  test('Fibonacci for 0', (){
    expect(printFibonacci(0), equals([]));
    print(printFibonacci(0));
  });
  test('Fibonacci for -7', (){
    expect(printFibonacci(0), equals([]));
    print(printFibonacci(0));
  });
}