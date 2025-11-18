/* Farhad Akbari
Week 2
11/15/2025
23. Fibonacci series up to N terms
Description: Generate the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8…) up to N terms.
Example:
Input:
7
Output:
0, 1, 1, 2, 3, 5, 8
 */
List<int> fibonacci(int number) {
  if (number <= 0) return [];
  if (number == 1) return [0];
  if (number == 2) return [0, 1];

  List<int> fibonacciNumber = [0, 1];

  for (int i = 2; i < number; i++) {
    int nextFibonacci = fibonacciNumber[i - 1] + fibonacciNumber[i - 2];
    fibonacciNumber.add(nextFibonacci);
  }

  return fibonacciNumber;
}
