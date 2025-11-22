import 'package:sky/Week3/Question8/findNumberInArray.dart';
import 'package:test/test.dart';
void main(){
  test('It will search a number in an array',(){
    expect(findNumberInArray([1,2,3,4,5], 4), equals(true));
  });
  test('It will search a number in an array',(){
    expect(findNumberInArray([1,-2,3,-4,-5], -4), equals(true));
  });
  test('It will search a number in an array',(){
    expect(findNumberInArray([1,2,0,4,0], 0), equals(true));
  });
  test('It will search a number in an array',(){
    expect(findNumberInArray([1], 1), equals(true));
  });
  test('It will search a number in an array',(){
    expect(findNumberInArray([1], 0), equals(false));
  });

}