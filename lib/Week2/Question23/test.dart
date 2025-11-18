import 'package:sky/Week2/Question23/printFibonacci.dart';
import 'package:test/test.dart';
void main() {
  test('Fibonacci for n = 7', () {
    expect(fibonacci(7), equals([0, 1, 1, 2, 3, 5, 8]));
    print(fibonacci(7));
  });
  test('Fibonacci for 1', (){
    expect(fibonacci(1), equals([0]));
    print(fibonacci(1));
  });
  test('Fibonacci for 2', (){
    expect(fibonacci(2), equals([0,1]));
    print(fibonacci(2));
  });
  test('Fibonacci for 0', (){
    expect(fibonacci(0), equals([]));
    print(fibonacci(0));
  });
}