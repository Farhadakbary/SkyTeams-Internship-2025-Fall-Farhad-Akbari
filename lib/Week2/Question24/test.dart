import 'package:sky/Week2/Question24/gcd.dart';
import 'package:test/test.dart';
void main(){
  test('It will test the gcd',(){
    expect(findGCD(12, 18), equals(6));
    print(findGCD(12, 18));
  });
}