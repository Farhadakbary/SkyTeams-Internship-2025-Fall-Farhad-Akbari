import 'mergArrays.dart';
import 'package:test/test.dart';
void main(){
  test('This will merge two arrays', (){
    expect(mergeArrays([1,2,3], [4,5,6]), equals([1,2,3,4,5,6]));
  });
}