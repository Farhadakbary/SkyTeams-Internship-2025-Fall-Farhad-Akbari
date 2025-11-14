import 'package:sky/Week2/Question19/reverseNumber.dart';
import 'package:test/test.dart';
void main(){
  test('It will reverse the number', (){
    expect(reverseNumber(1234), equals(4321));
    print(reverseNumber(1234));
  });
    test('Reverse a single digit', () {
      expect(reverseNumber(10202), equals(20201));
      print(reverseNumber(10202));
    });
    test('Reverse digits with zero', () {
      expect(reverseNumber(7), equals(7));
    });

}