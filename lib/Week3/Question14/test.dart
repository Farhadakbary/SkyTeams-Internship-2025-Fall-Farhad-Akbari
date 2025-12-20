import 'package:sky/Week3/Question14/factorial.dart';
import 'package:test/test.dart';
void main(){
  test('It will return the factorial', (){
    expect(factorail(5), equals(120));
  });
  test('It will return the factorial', (){
    expect(factorail(-5), equals(1));
  });
  test('It will return the factorial', (){
    expect(factorail(-4), equals(1));
  });
  test('It will return the factorial', (){
    expect(factorail(0), equals(1));
  });
}