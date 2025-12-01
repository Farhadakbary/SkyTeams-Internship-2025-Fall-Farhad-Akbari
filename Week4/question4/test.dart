import 'package:test/test.dart';
import 'elemntsInBothArrays.dart';

void main(){
  test('This will return the elements in both arrays', (){
    expect(elementsInBothArrays([1,2,3,4], [3,4,5,6]), equals([3,4]));
    print(elementsInBothArrays([1,2,3,4], [3,4,5,6]));
  });
  test('This will return the elements in both arrays', (){
    expect(elementsInBothArrays([1,2,3,4], [1,4,5,2]), equals([1,2,4]));
    print(elementsInBothArrays([1,2,3,4], [1,4,5,2]));
  });
}