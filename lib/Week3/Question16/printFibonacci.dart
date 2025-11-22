/* Farhad Akbari
11/18/2025
16. Fibonacci sequence
Description: Print the Fibonacci sequence up to N terms.
Example:
Input:
7
Output:
0, 1, 1, 2, 3, 5, 8
 */
// fibonacci with recursion
int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}


List<int> printFibonacci(int number) {
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
