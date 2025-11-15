import 'package:sky/Week2/Question25/lcm.dart';
import 'package:test/test.dart';
void main() {
  test('LCM of 12 and 18 should be 36', () {
    expect(findLCM(12, 18), equals(36));
  });
  test('LCM of 12 and 18 should be 36', () {
    print(findLCM(120, 18));
    expect(findLCM(120, 18), equals(360));
  });
}