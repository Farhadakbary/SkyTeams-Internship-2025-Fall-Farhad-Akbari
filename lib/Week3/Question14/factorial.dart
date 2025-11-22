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
  number=number.abs();
  int result=1;
  for(int i=1; i<=number;i++){
    result *= i;
  }
  return result;
}