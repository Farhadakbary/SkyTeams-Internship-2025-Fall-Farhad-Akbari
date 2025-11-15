import 'package:sky/Week2/Question24/gcd.dart';
import 'package:test/test.dart';
void main(){
  test('It will test the gcd',(){
    expect(findGCD(12, 18), equals(6));
    print(findGCD(12, 18));
  });
  test('It will test the gcd of 20,44', (){
    expect(findGCD(20, 44), equals(4));
    print(findGCD(20, 44));
  });
  test('The 0 with 44 is 44', (){
    expect(findGCD(0, 44), equals(44));
  });
  test('The 0 with 0 is 0', (){
    expect(findGCD(0, 0), equals(0));
  });
  test('The 1 with 1 is 1', (){
    expect(findGCD(1, 1), equals(1));
  });
}