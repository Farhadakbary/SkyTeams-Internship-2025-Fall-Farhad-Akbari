/* Farhad Akbari
11/17/2025
12. Check for palindrome number
Description: Check if a number reads the same backward and forward.
Example:
Input:
121
Output:
Palindrome
Input:
123
Output:
Not Palindrome
 */
bool isPalindrome(int number){
  int original=number;
  int reversed=0;
  while(number >0){
    int digit=number%10;
    reversed= reversed *10 +digit;
    number ~/= 10;
  }
  return original==reversed;
}