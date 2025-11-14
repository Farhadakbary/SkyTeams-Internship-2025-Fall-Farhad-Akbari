/* Farhad Akbari
Week 2
11/12/2025
20. Count digits in a number
Description: Find how many digits are in a number.
Example:
Input:
786
Output:
3
 */
int countDigits (int number){
  int count=0;
 if(number ==0) return 1;
 number =number.abs();
 while(number!= 0){
   number ~/= 10;
   count ++;
 }
  return count;
}