/* Farhad Akbari
11/18/2025
22. Collatz Sequence (Hailstone Numbers)
Description:
Take a number n.
• If n is even, divide it by 2.
• If n is odd, multiply it by 3 and add 1.
• Repeat until n = 1.
• Count the number of steps to reach 1.
Example:
Input:
6
Output:
6 → 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1 (Steps: 8)
 */
String collatz(int n) {
  if (n <= 0) {
    throw ArgumentError("Number must be positive.");
  }

  List<int> sequence = [n];
  int steps = 0;

  while (n != 1) {
    if (n % 2 == 0) {
      n = n ~/ 2;
    } else {
      n = 3 * n + 1;
    }
    sequence.add(n);
    steps++;
  }

  return "${sequence.join(' → ')} (Steps: $steps)";
}
