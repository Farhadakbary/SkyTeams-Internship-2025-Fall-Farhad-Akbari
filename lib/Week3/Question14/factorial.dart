/* Farhad Akbari
11/17/2025
14. Find factorial of a number
Description: Compute N! using iterative approach.
Example:
Input:
5
Output:
120
 */
int factorail(int number){
 if(number <= 1){return 1;
 }else {
   return number * factorail(number - 1);
 }
}