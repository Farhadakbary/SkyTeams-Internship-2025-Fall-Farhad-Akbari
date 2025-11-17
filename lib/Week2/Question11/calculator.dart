/* Farhad Akbari
Week 2
11/11/2025
11. Simple Calculator using switch-case
Description: Input two numbers and an operator (+, -, *, /) and compute the result.
Example:
Input:
5, 3, +
Output:
8
 */
double simpleCalculator(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw ArgumentError('Cannot divide by zero');
      }
      return num1 / num2;
    default:
      throw ArgumentError('Invalid operator. Use +, -, *, or /.');
  }
}
