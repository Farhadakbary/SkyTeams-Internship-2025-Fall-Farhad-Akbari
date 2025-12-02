import 'package:test/test.dart';
import 'package:test/scaffolding.dart';

import 'charFrequency.dart';

void main() {
  print(charFrequency("banana"));
  test('It will return the frequency ', (){
    expect(charFrequency('banana'), equals({'b': 1, 'a': 3, 'n': 2}));
  });
}
