import 'package:sky/Week2/Question14/charecter.dart';
import 'package:test/test.dart';
void main(){
  test('Checks the letters', (){
    expect(charectarChecker('a'), 'Vowel');
  });

  test('Checks the Consonant', (){
    expect(charectarChecker('b'), 'Consonant');
  });

  test('Checks the Number', (){
    expect(charectarChecker('5'), 'Number');
  });
  test('Checks the Special Character', (){
    expect(charectarChecker('!'), 'Special Character');
  });
}