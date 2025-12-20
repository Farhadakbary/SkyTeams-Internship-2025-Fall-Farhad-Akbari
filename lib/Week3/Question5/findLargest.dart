/* Farhad Akbari
11/16/2025
5. Write a function to find the largest element in an array
Description: Given an array of numbers, return the largest value.
Example:
Input:
[2, 8, 5, 3, 9]
Output:
9
 */
int findLargest(List<int> numbers){
  if(numbers.isEmpty){
    throw ArgumentError('Array can not be empty');
  }
  int largest=numbers[0];
  for(int i=0; i < numbers.length;i++){
    if(numbers[i]>largest){
      largest= numbers[i];
    }
  }
  return largest;
}