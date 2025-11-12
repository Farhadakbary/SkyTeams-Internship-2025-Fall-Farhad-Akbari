import 'package:sky/Week2/Question8/positiveNegativeZero.dart';
import 'package:test/test.dart';
void main(){
  test('Will checks the positive and negative an zero correctly', (){
    final result= positiveNegativeZero(12);
    expect(result, equals('Positive'));
    print('Positive');
  });
  test('Will checks the positive and negative an zero correctly', (){
    final result= positiveNegativeZero(-12);
    expect(result, equals('Negative'));
    print('Negative');
  });  test('Will checks the positive and negative an zero correctly', (){
    final result= positiveNegativeZero(0);
    expect(result, equals('Zero'));
    print('Zero');
  });
}
