import 'package:sky/Week2/Question14/charecter.dart';
import 'package:test/test.dart';
void main(){
  test('Checks the letters', (){
    expect(characterChecker('a'), 'Vowel');
  });

  test('Checks the Consonant', (){
    expect(characterChecker('b'), 'Consonant');
  });

  test('Checks the Number', (){
    expect(characterChecker('5'), 'Number');
  });
  test('Checks the Special Character', (){
    expect(characterChecker('!'), 'Special Character');
  });
}