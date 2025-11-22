/* Farhad Akbari
11/16/2025
4. Display all factors of a number
Description: Print all numbers that divide the given number exactly.
Example:
Input:
12
Output:
1, 2, 3, 4, 6, 12
 */
String factors(int number) {
  List factors = [];
  number = number.abs();
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      factors.add(i.toString());
    }
  }
  return factors.join(", ");
}
