import 'package:test/test.dart';

import 'generateAllPrimes.dart';
void main(){
  test('It will return the primes', (){
    expect(primeNumber(10), equals([2, 3, 5, 7]));
    print(primeNumber(10));
  });

  test('It will return the primes', (){
    expect(primeNumber(1), equals([]));
    print(primeNumber(1));
  });
  test('It will return the primes of -10', (){
     expect(primeNumber(-10), equals([]));
    print(primeNumber(-10));
  });
}