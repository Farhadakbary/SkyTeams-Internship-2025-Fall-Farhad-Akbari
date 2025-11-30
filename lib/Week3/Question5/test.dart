import 'package:sky/Week3/Question5/findLargest.dart';
import 'package:test/test.dart';
void main(){
  test('It will return the largest number in [1,2,3,34]', (){
    expect(findLargest([1,2,3,34]), equals(34));
  });
  test('It will return the largest number in [1]', (){
    expect(findLargest([1]), equals(1));
  });
  test('It will return the largest number in [0]', (){
    expect(findLargest([0]), equals(0));
  });
  test('It will return the largest number in [-1,-2,-3,-34]', (){
    expect(findLargest([-1,-2,-3,-34]), equals(-1));
  });
}