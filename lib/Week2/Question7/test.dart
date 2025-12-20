import 'package:test/test.dart';

import 'oddAndEven.dart';
void main(){
  test("It will checks the odd and even correctly", (){
    final result= oddAndEven(432);
    expect(result,equals('odd'));
    print('This number is odd');
  });
  test("It will checks the odd and even correctly", (){
    final result= oddAndEven(121);
    expect(result,equals('even'));
    print('This number is even');
  });
}