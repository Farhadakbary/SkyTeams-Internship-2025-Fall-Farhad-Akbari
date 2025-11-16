/* Farhad Akbari
Week 2
11/16/2025
9. Write a function to count occurrences of an element in an array
Description: Count how many times a given number appears in the array.
Example:
Input:
Array = [2, 3, 2, 5, 2], Element = 2
Output:
3
 */
int repeatTime(List<int> numbers, int repeat){
  if(numbers.isEmpty){
    throw ArgumentError('List should not be empty');
  }
  int count=0;
  for(int i=0; i< numbers.length; i++){
    if(numbers[i]==repeat){
      count +=1;
    }
  }
  return count;

}