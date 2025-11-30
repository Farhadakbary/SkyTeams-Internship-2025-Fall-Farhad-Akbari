import 'package:sky/Week3/Question4/factors.dart';
import 'package:test/test.dart';
void main(){
  test('It will return all the factors of 12', (){
    expect(factors(12), equals('1, 2, 3, 4, 6, 12'));
  });
  test('It will return all the factors of 1', (){
    expect(factors(1), equals('1'));
  });
  test('It will return all the factors of 0', (){
    expect(factors(0), equals(''));
  });
  test('It will return all the factors of 12', (){
    expect(factors(12), equals('1, 2, 3, 4, 6, 12'));
  });
  test('It will return all the factors of -12', (){
    expect(factors(-12), equals('1, 2, 3, 4, 6, 12'));
  });
}