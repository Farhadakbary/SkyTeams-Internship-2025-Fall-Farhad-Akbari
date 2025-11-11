import 'package:sky/Week2/Question4/interest.dart';
import 'package:test/test.dart';

void main(){
  test("The simple interest and compund interest works", (){
    final result= simpleAndCompoundinterest(1000, 5, 2);
    expect(result['simpleInterest'], equals(100));
    expect(result['compoundInterest'], closeTo(102.5, 0.001));
  });
}