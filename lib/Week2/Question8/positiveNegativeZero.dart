/* Farhad Akbari
Week 2
11/11/2025
8. Determine if a number is positive, negative, or zero
Description: Use if-else statements to categorize a number.
Example:
Input: -3
Output:
Negative
 */

String positiveNegativeZero (double number){
  if(number >0 ){
    return 'Positive';
  }else if(number < 0){
    return 'Negative';
  }
  else{
    return 'Zero';
  }
}