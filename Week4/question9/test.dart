import 'dart:math';

import 'package:test/test.dart';
import 'compressString.dart';

void main() {
  print(compressString("aabcccccaaa"));
  test('It will compress String', (){
    expect(compressString('aabcccccaaa'), equals('a2b1c5a3'));
  });

  test('It will compress String', (){
    expect(compressString('a'), equals('a1'));
  });
}
