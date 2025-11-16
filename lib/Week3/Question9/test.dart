import 'package:sky/Week3/Question9/reapetTimes.dart';
import 'package:test/test.dart';
void main(){
  test('It will say how many times an element appears in a list', (){
    expect(repeatTime([1,2,2,3,3,3,3,4,5], 3), equals(4));
    print(repeatTime([1,2,2,3,3,3,3,4,5], 3));
  });
  test('It will say how many times an element appears in a list', (){
    expect(repeatTime([5], 3), equals(0));
    print(repeatTime([5], 3));
  });
  test('It will say how many times an element appears in a list', (){
    expect(repeatTime([1,2,2,3,3,3,3,4,5], 2), equals(2));
    print(repeatTime([1,2,2,3,3,3,3,4,5], 2));
  });
  test('It will say how many times an element appears in a list', (){
    expect(repeatTime([1,2,2,-3,3,3,-3,4,5], -3), equals(2));
  });

  test('It will say how many times an element appears in a list', (){
    expect(repeatTime([1], 3), equals(0));
  });
}