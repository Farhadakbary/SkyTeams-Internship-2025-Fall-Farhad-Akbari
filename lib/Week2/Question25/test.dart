import 'package:sky/Week2/Question25/lcm.dart';
import 'package:test/test.dart';
void main() {
  test('LCM of 12 and 18 should be 36', () {
    expect(findLCM(12, 18), equals(36));
  });
  test('LCM of 12 and 18 should be 360', () {
    print(findLCM(120, 18));
    expect(findLCM(120, 18), equals(360));
  });
  test('LCM of 10 and 100 should be 100', (){
    expect(findLCM(10,100),equals(100));
  });
  test('LCM of 0 and 22 should be',(){
    expect(findLCM(0, 22),equals(0));
  });
}