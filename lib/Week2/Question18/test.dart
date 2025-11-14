import 'package:sky/Week2/Question18/multiplication.dart';
import 'package:test/test.dart';

void main() {
  test('Should write the table of multiplication', () {
    final result = multiplication(5);

    final expected = '''
5 × 1 = 5
5 × 2 = 10
5 × 3 = 15
5 × 4 = 20
5 × 5 = 25
5 × 6 = 30
5 × 7 = 35
5 × 8 = 40
5 × 9 = 45
5 × 10 = 50''';

    expect(result, equals(expected));
  });

}
