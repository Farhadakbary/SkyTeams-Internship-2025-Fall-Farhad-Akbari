import 'package:test/test.dart';
import 'rotate.dart';
void main() {
  test('This will rotate k times the array', (){
    expect(rotateRight([1, 2, 3, 4, 5], 2), equals([4,5,1,2,3]));
  });
  print(rotateRight([1, 2, 3, 4, 5], 2));
}
