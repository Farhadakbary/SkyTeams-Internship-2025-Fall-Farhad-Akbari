import 'package:test/test.dart';

import 'polishNotation.dart';
void main() {
  group('evaluatePN', () {
    test('evaluates simple addition and multiplication', () {
      expect(evaluatePN(["2","1","+","3","*"]), 9);
    });

    test('evaluates subtraction', () {
      expect(evaluatePN(["4","2","-"]), 2);
    });

    test('evaluates division', () {
      expect(evaluatePN(["8","4","/"]), 2);
    });

    test('evaluates multiple operations', () {
      expect(evaluatePN(["5","1","2","+","4","*","+","3","-"]), 14);
    });

    test('evaluates single number', () {
      expect(evaluatePN(["42"]), 42);
    });

    test('evaluates negative numbers', () {
      expect(evaluatePN(["2","3","-"]), -1);
    });

    test('evaluates complex expression', () {
      expect(evaluatePN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]), 22);
    });
  });
}
