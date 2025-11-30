
import 'package:sky/Week3/Question6/findSmallest.dart';
import 'package:test/test.dart';
void main(){
  test('It will return the largest number in [1,2,3,34] that is 1', (){
    expect(findSmallest([1,2,3,34]), equals(1));
  });
  test('It will return the largest number in [1] that is 1', (){
    expect(findSmallest([1]), equals(1));
  });
  test('It will return the largest number in [0] that is 0', (){
    expect(findSmallest([0]), equals(0));
  });
  test('It will return the largest number in [-1,-2,-3,-34] that is -34', (){
    expect(findSmallest([-1,-2,-3,-34]), equals(-34));
  });
}