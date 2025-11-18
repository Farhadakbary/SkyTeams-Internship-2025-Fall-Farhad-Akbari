/* Farhad Akbari
Week 2
11/11/2025
1. Swap two variables without using a temporary variable
Description: Write a program to swap the values of two variables (e.g., a and b) without using a
third variable.
Example:
Input:
a = 5, b = 10
Output:
a = 10, b = 5
 */

int swapAandB(int a, int b) {
  a = a + b;
  b = a - b;
  a = a - b;
/* example if a=5 and b=3  in the first step the a become
 8 and in the second step b will become 5 and in the
 last step a will become 3 and the reverse is done */
  print('After swap: a = $a, b = $b');
  return b;
}