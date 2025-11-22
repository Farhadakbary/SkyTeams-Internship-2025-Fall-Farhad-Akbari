/* Farhad Akbari
11/17/2025
11. Generate all prime numbers up to N
Description: List all prime numbers up to a given limit using a loop.
Example:
Input:
10
Output:
2, 3, 5, 7
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

List<int> primeNumber(int number) {
  List<int> primes = [];

  for (int i = 2; i <= number; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }

  return primes;
}

