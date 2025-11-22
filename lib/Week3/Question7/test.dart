import 'package:sky/Week3/Question7/sumOfNumbersInArray.dart';
import 'package:test/test.dart';
void main(){
  test("It will test the element of this array  [1,3,4,5,6] is 19", (){
    expect(sumOfNumbersInArray([1,3,4,5,6]), equals(19));
  });
  test("It will test the element of this array  [1] is 1", (){
    expect(sumOfNumbersInArray([1]), equals(1));
  });
  test("It will test the element of this array  [0] is 0", (){
    expect(sumOfNumbersInArray([0]), equals(0));
  });
  test("It will test the element of this array  [-1,3,4,5,-6] is 5", (){
    expect(sumOfNumbersInArray([-1,3,4,5,-6]), equals(5));
  });
  test("It will test the element of this array  [-1,-3,-4,-5,-6] is -19", (){
    expect(sumOfNumbersInArray([-1,-3,-4,-5,-6]), equals(-19));
  });
}