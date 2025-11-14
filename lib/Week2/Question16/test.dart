import 'package:sky/Week2/Question16/printNumbers.dart';
import 'package:test/test.dart';
void main(){
  test('This should print 0 to 100',(){
    final result=print1to100();
    expect(result.startsWith('1'),true);


    final parts = result.split(', ');
    expect(parts[49], '50');
  });
}