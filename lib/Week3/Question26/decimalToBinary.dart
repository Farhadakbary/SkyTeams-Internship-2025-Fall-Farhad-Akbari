/* Farhad Akbari
Week 2
11/22/2025
26. Convert Decimal to Binary
Description: Convert a decimal number to its binary representation.
Example:
Input:
10
Output:
1010
 */
String decimalToBinary(int n) {
  if (n == 0) return "0";

  String binary = "";

  int number = n;

  while (number > 0) {
    int remainder = number % 2;
    binary = remainder.toString() + binary;
    number = number ~/ 2;
  }

  return binary;
}
