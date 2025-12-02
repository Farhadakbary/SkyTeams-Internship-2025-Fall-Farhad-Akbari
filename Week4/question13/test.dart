import 'package:test/test.dart';
import 'stringPattern.dart';

void main() {
  test('It will say a string is pattern or not', () {
    expect(pattern('abba', 'dog cat cat dog'), equals(true));
  });
  test('It will say a string is pattern or not', () {
    expect(pattern('abba', 'dog cat cat fish'), equals(false));
  });
}
