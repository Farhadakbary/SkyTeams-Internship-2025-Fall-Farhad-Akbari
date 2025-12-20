/* Farhad Akbari
11/16/2025
6. Write a function to find the smallest element in an array
Description: Find and return the smallest number in an array.
Example:
Input:
[4, 7, 1, 9, 2]
Output:
1
 */
int findSmallest(List<int> numbers){
  if(numbers.isEmpty){
    throw ArgumentError('Array can not be empty');
  }
  int Smallest=numbers[0];
  for(int i=0; i < numbers.length;i++){
    if(numbers[i]<Smallest){
      Smallest= numbers[i];
    }
  }
  return Smallest;
}