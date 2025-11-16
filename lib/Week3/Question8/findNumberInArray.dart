/* Farhad Akbari
Week 2
11/16/2025
8. Write a function to check if an array contains a specific element
Description: Determine if a given element exists in the array.
Example:
Input:
Array = [3, 6, 9, 12], Element = 6
Output:
Found
 */
bool findNumberInArray(List<int> numbers, int searchedNumber){
  if(numbers.isEmpty){
    throw ArgumentError('The array should not be empty');
  }
  for(int i=0; i<numbers.length;i++){
    if(numbers[i]== searchedNumber){
     print('Found');
     return true;
    }
  }
  print('Not Found');
  return false;
}
