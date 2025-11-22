/* Farhad Akbari
11/16/2025
3. Sum of digits of a number
Description: Calculate the sum of all digits in a given number.
Example:
Input:
12345
Output:
15
 */
int sumOfDigits(int number){
  int sum= 0;
  number=number.abs();
  while(number != 0){
    sum = sum + number %10;
    number ~/= 10;
  }
  return sum;
}