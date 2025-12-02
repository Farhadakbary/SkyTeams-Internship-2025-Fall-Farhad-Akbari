import 'package:test/test.dart';
import 'unique.dart';

void main(){
  test('It will say string is unique or not', (){
    expect(isUniqueString('Hello'), equals(false));
  });
  test('It will say string is unique or not', (){
    expect(isUniqueString('world'), equals(true));
  });
  test('It will say string is unique or not', (){
    expect(isUniqueString(''), equals(true));
  });
}