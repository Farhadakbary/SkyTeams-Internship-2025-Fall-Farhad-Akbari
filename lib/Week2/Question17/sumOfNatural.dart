/* Farhad Akbari
Week 2
11/13/2025
17. Sum of first N natural numbers
Description: Calculate and print the sum using a loop.
Example:
Input:
5
Output:
15
 */
int sumOfNatural (int number){
  int sum =0;
  for(int i=1;i<=number; i++){
    sum +=i;
  }
  return sum;
}