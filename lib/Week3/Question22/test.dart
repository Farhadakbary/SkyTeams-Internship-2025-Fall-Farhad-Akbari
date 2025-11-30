import 'package:test/test.dart';
import 'collatzNumber.dart';

void main() {

  test('Collatz of 1', () {
    expect(collatz(1), equals('1 (Steps: 0)'));
    print(collatz(1));
  });

  test('Collatz of 2', () {
    expect(collatz(2), equals('2 → 1 (Steps: 1)'));
    print(collatz(2));
  });

  test('Collatz of 3', () {
    expect(collatz(3), equals('3 → 10 → 5 → 16 → 8 → 4 → 2 → 1 (Steps: 7)'));
    print(collatz(3));
  });

  test('Collatz of 4', () {
    expect(collatz(4), equals('4 → 2 → 1 (Steps: 2)'));
  });

  test('Collatz of 5', () {
    expect(collatz(5), equals('5 → 16 → 8 → 4 → 2 → 1 (Steps: 5)'));
  });

  test('Collatz of 6', () {
    expect(
        collatz(6),
        equals('6 → 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1 (Steps: 8)')
    );
  });

  test('Collatz of 7', () {
    expect(
        collatz(7),
        equals('7 → 22 → 11 → 34 → 17 → 52 → 26 → 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1 (Steps: 16)')
    );
  });

  test('Collatz of 8', () {
    expect(
        collatz(8),
        equals('8 → 4 → 2 → 1 (Steps: 3)')
    );
  });

  test('Collatz of 9', () {
    expect(
      collatz(9),
      equals(
          '9 → 28 → 14 → 7 → 22 → 11 → 34 → 17 → 52 → 26 → 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1 (Steps: 19)'
      ),
    );
  });

  test('Collatz rejects negative numbers', () {
    expect(() => collatz(-5), throwsArgumentError);
  });
}
