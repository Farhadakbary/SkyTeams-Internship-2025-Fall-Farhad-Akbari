import 'package:sky/Week2/Question17/sumOfNatural.dart';
import 'package:test/test.dart';
void main(){
  test('Should add the natural numbers', (){
    expect(sumOfNatural(5), equals(15));
    print(sumOfNatural(3));
  });
  test('Should add natural numbers', (){

    expect(sumOfNatural(-4), equals(0));
  });
}