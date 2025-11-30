/* Farhad Akbari
Week 2
11/15/2025
23. Fibonacci series up to N terms
Description: Generate the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8…) up to N terms.
Example:
Input:
7
Output:
0, 1, 1, 2, 3, 5, 8
 */
int findGCD (int firstNumber, int secondNumber){

  while(secondNumber !=0){
    int temp=secondNumber;
    secondNumber= firstNumber %secondNumber;
    firstNumber=temp;
  }
  return firstNumber;
}