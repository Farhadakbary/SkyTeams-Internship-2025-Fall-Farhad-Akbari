import 'package:test/test.dart';
import 'numberGuessGame.dart';

void main() {
  group('Number Guess Game Tests', () {
    test('Guess is too low', () {
      expect(numberGuessGame(10, 50), equals("Too Low"));
    });

    test('Guess is too high', () {
      expect(numberGuessGame(80, 40), equals("Too High"));
    });

    test('Guess is correct', () {
      expect(numberGuessGame(25, 25), equals("Correct"));
    });

    test('Guess one unit below target', () {
      expect(numberGuessGame(49, 50), equals("Too Low"));
    });

    test('Guess one unit above target', () {
      expect(numberGuessGame(51, 50), equals("Too High"));
    });

    test('Target is 1 and guess is 1', () {
      expect(numberGuessGame(1, 1), equals("Correct"));
    });
  });
}
