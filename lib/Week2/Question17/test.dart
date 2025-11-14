import 'package:sky/Week2/Question17/sumOfNatural.dart';
import 'package:test/test.dart';
void main(){
  test('Should add the natural numbers', (){
    expect(sumOfNatural(5), equals(15));

    expect(sumOfNatural(3), equals(6));

    print(sumOfNatural(3));
  });
}