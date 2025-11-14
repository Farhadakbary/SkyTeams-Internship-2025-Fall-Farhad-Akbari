import 'package:sky/Week2/Question21/sumOfDigits.dart';
import 'package:test/test.dart';
void main(){
  test('It will give us the sum of digits', (){
    expect(sumOfDigits(1234), equals(10));
  });
  print(sumOfDigits(1234));
}