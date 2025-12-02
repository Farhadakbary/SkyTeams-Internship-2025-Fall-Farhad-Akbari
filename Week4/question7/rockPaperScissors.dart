/*
 Farhad Akbari
 12/1/2025
7. Rock, Paper, Scissors Game
Description: Simulate a game using random computer choices.
 */
import 'dart:math';

String playRockPaperScissors(String userChoice) {
  final choices = ['rock', 'paper', 'scissors'];
  final random = Random();
  String computer = choices[random.nextInt(3)];
  if (userChoice == computer) {
    return "Equal I chose $computer";
  } else if (userChoice == 'paper' && computer == 'rock') {
    return 'You win I chose $computer You chose $userChoice';
  } else if (userChoice == 'rock' && computer == 'paper') {
    return 'You lost I chose $computer You chose $userChoice';
  } else if (userChoice == 'scissors' && computer == 'paper') {
    return 'You win I chose $computer You chose $userChoice';
  } else if (userChoice == 'paper' && computer == 'scissors') {
    return 'You lost I chose $computer You chose $userChoice';
  } else if (userChoice == 'rock' && computer == 'scissors') {
    return 'You win I chose $computer You chose $userChoice';
  } else  {
    return 'You lost I chose $computer You chose $userChoice';
  }
}
