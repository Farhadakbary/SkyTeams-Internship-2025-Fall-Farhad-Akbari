/* Farhad Akbari
Week 2
11/16/2025
7. Write a function to find the sum of all elements in an array
Description: Calculate the total sum of all array elements.
Example:
Input:
[1, 2, 3, 4, 5]
Output:
15
 */
int sumOfNumbersInArray(List<int> numbers){
  int sum=0;
  for(int i=0; i< numbers.length; i++){
    sum += numbers[i];
  }
  return sum;
}