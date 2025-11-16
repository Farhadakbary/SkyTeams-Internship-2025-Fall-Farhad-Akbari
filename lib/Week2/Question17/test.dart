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
  test('Should add natural numbers', (){

    expect(sumOfNatural(1), equals(1));
  });
  test('Should add natural numbers', (){

    expect(sumOfNatural(0), equals(0));
  });
  test('Should add natural numbers', (){

    expect(sumOfNatural(10), equals(55));
  });
  test('Should add natural numbers', (){

    expect(sumOfNatural(100), equals(5050));
  });
  test('Very large amount', (){
    expect(sumOfNatural(100000), equals(100000 * 100001 / 2));
    print(sumOfNatural(100000));
  });
}