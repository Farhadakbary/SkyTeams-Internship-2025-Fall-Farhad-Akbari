import 'rearrange.dart';
import 'package:test/test.dart';
void main(){
  print(reArrange([5,4,3,2,1]));
  test('It will re arrange the array even to odd', (){
    expect(reArrange([5,4,3,2,1]),equals([4,2,5,3,1]));
  });
  test('It will re arrange the array even to odd', (){
    expect(reArrange([5,4,3,2,1,4]),equals([4,2,4,5,3,1]));
  });
}