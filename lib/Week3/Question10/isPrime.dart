/* Farhad Akbari
11/16/2025
10. Check whether a number is prime
Description: Determine if a number is divisible only by 1 and itself.
Example:
Input:
17
Output:
Prime
Input:
20
Output:
Not Prime
 */
bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}