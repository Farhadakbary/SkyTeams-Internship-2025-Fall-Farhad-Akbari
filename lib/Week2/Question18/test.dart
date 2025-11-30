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
  test('The table for -2', (){
    final result=multiplication(-2);
    final expected = '''
-2 × 1 = -2
-2 × 2 = -4
-2 × 3 = -6
-2 × 4 = -8
-2 × 5 = -10
-2 × 6 = -12
-2 × 7 = -14
-2 × 8 = -16
-2 × 9 = -18
-2 × 10 = -20''';

    expect(result, equals(expected));

    print(multiplication(-2));
  });
}
