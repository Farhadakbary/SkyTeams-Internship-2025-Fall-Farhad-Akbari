import 'package:test/test.dart';
import 'convertSeconds.dart';
void main() {
  test('Convert seconds to minute', () {
    final result = secondConverter(240, 'm');
    expect(result['minute'], equals(4));
  });

  test('Convert seconds to hours', () {
    final result = secondConverter(3600, 'h');
    expect(result['hours'], equals(1));
  });
}
