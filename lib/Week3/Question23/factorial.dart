/* Farhad Akbari
Week 2
11/22/2025
23. Calculate Factorial Using Recursion
Description: Implement factorial(n), which calculates the factorial of n using recursion.
Example:
Input:
5
Output:
120
 */
int factorial(int n) {
  if (n < 0) {
    throw ArgumentError('Negative numbers are not allowed');
  }
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}
