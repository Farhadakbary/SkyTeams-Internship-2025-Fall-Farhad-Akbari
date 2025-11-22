import 'package:sky/Week3/Question13/power.dart';
import 'package:test/test.dart';
void main(){
  test('It power the numbers', (){
    expect(powerOfNumber(4, 3),equals(64));
  });
  test('It power the numbers', (){
    expect(powerOfNumber(0, 3),equals(0));
  });
  test('It power the numbers', (){
    expect(powerOfNumber(-4, 3),equals(64));
  });
  test('It power the numbers', (){
    expect(powerOfNumber(2, 3),equals(8));
  });
  test('It power the numbers', (){
    expect(powerOfNumber(5.5, 3),equals(166.375));
  });
}