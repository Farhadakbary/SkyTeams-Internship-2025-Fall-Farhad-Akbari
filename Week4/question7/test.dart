import 'rockPaperScissors.dart';
import 'package:test/test.dart';
import 'dart:core';

void main() {
  group('playRockPaperScissors Tests', () {
    final validChoices = ['rock', 'paper', 'scissors'];

    test('returns a result message containing user choice', () {
      for (var choice in validChoices) {
        final result = playRockPaperScissors(choice);
        expect(
          result.contains(choice),
          true,
          reason: 'Result should mention user choice',
        );
      }
    });

    test('returns a result message containing one of computer choices', () {
      for (var choice in validChoices) {
        final result = playRockPaperScissors(choice);
        expect(
          validChoices.any((c) => result.contains(c)),
          true,
          reason: 'Result should mention one of computer choices',
        );
      }
    });

    test('returns one of the expected message patterns', () {
      for (var choice in validChoices) {
        final result = playRockPaperScissors(choice);
        expect(
          result.startsWith('You win') ||
              result.startsWith('You lost') ||
              result.startsWith('Equal'),
          true,
          reason: 'Result should start with a valid outcome',
        );
      }
    });

    test('throws no error for valid choices', () {
      for (var choice in validChoices) {
        expect(() => playRockPaperScissors(choice), returnsNormally);
      }
    });
  });
}
