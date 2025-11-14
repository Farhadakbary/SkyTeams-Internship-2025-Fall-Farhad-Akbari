/* Farhad Akbari
Week 2
11/12/2025
19. Reverse a number
Description: Reverse the digits of an integer.
Example:
Input:
1234
Output:
4321
 */
int reverseNumber (int number){
  int reversed=0;
  while (number != 0){
    int digit= number % 10;
    reversed = reversed * 10 +digit;
    number ~/= 10;
  }
  return reversed;
}