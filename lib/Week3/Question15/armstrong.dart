/* Farhad Akbari
11/17/2025
15. Check for Armstrong number
Description: A number is Armstrong if the sum of its digits raised to the power of the number of
digits equals the number itself.
Example:
Input:
153
Output:
Armstrong
Input:
123
Output:
Not Armstrong
 */
int armstrong(int number) {
  int original = number;
  if (number < 0) {
    number = -number;
  }

  int count = 0;
  int temp = number;
  if (temp == 0) {
    count = 1;
  } else {
    while (temp != 0) {
      temp ~/= 10;
      count++;
    }
  }

  int power(int base, int exp) {
    int result = 1;
    for (int i = 0; i < exp; i++) {
      result = result * base;
    }
    return result;
  }

  int sum = 0;
  temp = number;
  while (temp != 0) {
    int digit = temp % 10;
    sum += power(digit, count);
    temp ~/= 10;
  }

  return sum == original ? 1 : 0;
}
