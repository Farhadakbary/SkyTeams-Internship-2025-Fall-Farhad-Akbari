/* Farhad Akbari
Week 2
11/22/2025
25. Number Guessing Game
Description:
• The program randomly selects a number between 1 and 100.
• The user must guess the number.
• The program gives hints like “Too High” or “Too Low”.
• Continue until the user guesses correctly.
 */
String numberGuessGame(int userGuess, int targetNumber) {
  if (userGuess == targetNumber) {
    return "Correct! You guessed the number.";
  }
  else if (userGuess < targetNumber) {
    return "Too Low! Try a higher number.";
  }
  else {
    return "Too High! Try a lower number.";
  }
}
