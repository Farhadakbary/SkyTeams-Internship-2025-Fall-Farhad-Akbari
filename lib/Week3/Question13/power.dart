/* Farhad Akbari
11/17/2025
13. Power of a number (without built-in function)
Description: Compute a^b using repeated multiplication.
Example:
Input:
2, 5
Output:
32
 */
double powerOfNumber(double number, double power) {
  double result = 1;
  number=number.abs();
  power=power.abs();
  for (int i = 1; i <= power; i++) {
    result = result * number;
  }

  return result;
}
