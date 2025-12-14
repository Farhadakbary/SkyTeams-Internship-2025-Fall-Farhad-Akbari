/*
 Farhad Akbari
 12/1/2025
7. Rock, Paper, Scissors Game
Description: Simulate a game using random computer choices.
 */
import 'dart:math';

String playRockPaperScissors(String userChoice) {
  final choices = ['rock', 'paper', 'scissors'];
  final computer = choices[Random().nextInt(3)];

  if (userChoice == computer) {
    return "Equal — I chose $computer";
  }
  final winMap = {
    'rock': 'scissors',
    'paper': 'rock',
    'scissors': 'paper',
  };
  if (winMap[userChoice] == computer) {
    return "You win — I chose $computer, you chose $userChoice";
  }

  return "You lost — I chose $computer, you chose $userChoice";
}