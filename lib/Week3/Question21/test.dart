import 'package:sky/Week3/Question21/PasswordChecker.dart';
import 'package:test/test.dart';
void main(){
  test('It will check a password',(){
    expect(passwordChecker('Password#10'), equals('Strong'));
  });
  test('It will check a password',(){
    expect(passwordChecker('Pass10'), equals('Weak'));
  });
  test('It will check a password',(){
    expect(passwordChecker('1032623'), equals('Weak'));
  });
  test('It will check a password',(){
    expect(passwordChecker('Passwordddd'), equals('Weak'));
  });
  test('It will check a password',(){
    expect(passwordChecker('P a s s w o r d'), equals('Weak'));
  });
}