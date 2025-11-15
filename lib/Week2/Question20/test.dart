import 'package:sky/Week2/Question20/countDigits.dart';
import 'package:test/test.dart';
void main(){
  test('It will count the digits', (){
    expect(countDigits(3455), equals(4));
    print('🤷‍♀️🤷‍♀️🤷‍♀️🤷‍♀️🤷‍♀️🤷‍♀️🤷‍♀️');
    print(countDigits(3455));
  });
  test('It will say 6', (){
    expect(countDigits(100000), equals(6));
  });
  test('It will say 6', (){
    expect(countDigits(-100000), equals(6));
  });
}