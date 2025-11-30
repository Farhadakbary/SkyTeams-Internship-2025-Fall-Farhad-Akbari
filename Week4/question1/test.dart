import 'package:test/test.dart';
import 'secondLargest.dart';

void main() {
  test('This will return the second larest value', (){
    expect(secondLargest([4,1,645,2141,3221,22,415]),equals(2141));
  });
  print(secondLargest([4,1,645,2141,3221,22,415])); 
}
