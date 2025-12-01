import 'binarySearch.dart';
import 'package:test/test.dart';
void main(){
  print(binarySearch([1,2,3,4,5,6,7,8,9], 6));
  test('It will do a binary search',(){
    expect(binarySearch([1,2,3,4,5,6,7,8,9], 6), equals(1));
  });
}