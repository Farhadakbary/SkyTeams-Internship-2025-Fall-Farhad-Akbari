/* Farhad Akbari
Week 2
11/11/20257.
7. Check whether a number is even or odd
Description: Determine if a number is divisible by 2.
Example:
Input:
7
Output:
Odd
 */

String oddAndEven (int number){
  if(number % 2 == 0){
    return 'odd';
  }else{
    return 'even';
  }
}