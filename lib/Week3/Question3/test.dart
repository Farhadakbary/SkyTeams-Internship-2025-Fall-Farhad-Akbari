import 'package:sky/Week3/Question3/sumOfDigits.dart';
import 'package:test/test.dart';
void main(){
  test('It will give us the sum of digits', (){
    expect(sumOfDigits(1234), equals(10));
    print(sumOfDigits(1234));
  });
  test('Sum of 2140', (){
    expect(sumOfDigits(2140), equals(7));
    print(sumOfDigits(2140));
  });
  test('Sum of 1063445670302', (){
    expect(sumOfDigits(1063445670302), equals(41));
    print(sumOfDigits(1063445670302));
  });
  test('Sum of -30679', (){
    expect(sumOfDigits(-30679), equals(25));
    print(sumOfDigits(-30679));
  });
}