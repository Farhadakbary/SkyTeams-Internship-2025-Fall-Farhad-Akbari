import 'package:sky/Week3/Question15/armstrong.dart';
import 'package:test/test.dart';
void main(){
  test('It will say that is it an armstrong number', (){
    expect(armstrong(153), equals(1));
  });
  test('It will say that is it an armstrong number 121', (){
    expect(armstrong(121), equals(0));
  });
  test('It will say that is it an armstrong number 1500', (){
    expect(armstrong(1500), equals(0));
  });
  test('It will say that is it an armstrong number 14564', (){
    expect(armstrong(14564), equals(0));
  });
  test('It will say that is it an armstrong number -153', (){
    expect(armstrong(-153), equals(0));
  });
  test('It will say that is it an armstrong number 0', (){
    expect(armstrong(0), equals(1));
  });
}