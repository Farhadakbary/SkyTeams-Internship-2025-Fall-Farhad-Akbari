import 'package:sky/Week2/Question21/sumOfDigits.dart';
import 'package:test/test.dart';
void main(){
  test('It will give us the sum of digits', (){
    expect(sumOfDigits(1234), equals(10));
    print(sumOfDigits(1234));
  });
  test('Sum of 110', (){
    expect(sumOfDigits(110), equals(2));
    print(sumOfDigits(110));
  });
  test('Sum of 10000302', (){
    expect(sumOfDigits(10000302), equals(6));
    print(sumOfDigits(10000302));
  });
  test('Sum of -3319', (){
    expect(sumOfDigits(-3319), equals(16));
    print(sumOfDigits(-3319));
  });
}