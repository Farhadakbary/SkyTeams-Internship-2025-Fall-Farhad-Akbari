import 'package:test/test.dart';

import 'RightAlignedTriangle.dart';

void main() {
  test('It will print the right aligned triangle', () {
    expect(printRightAlignedTriangle(4), equals('   *\n  **\n ***\n****\n'));
    print(printRightAlignedTriangle(4));
  });
  test('What about -4', () {
    expect(printRightAlignedTriangle(-4), equals(''));
  });
  test('It will print the right aligned triangle 0', () {
    expect(printRightAlignedTriangle(0), equals(''));
  });
}
