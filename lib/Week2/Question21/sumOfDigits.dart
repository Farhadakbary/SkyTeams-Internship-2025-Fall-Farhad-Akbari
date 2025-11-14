/* Farhad Akbari
Week 2
11/12/2025
 21. Sum of digits
Description: Calculate the sum of all digits of a number.
Example:
Input:
123
Output:
6
 */
int sumOfDigits(int number){
  int sum= 0;
 while(number != 0){
   sum = sum + number %10;
   number ~/= 10;
 }
 return sum;
}