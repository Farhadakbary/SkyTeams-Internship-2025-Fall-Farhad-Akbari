/* Farhad Akbari
11/22/2025
30. Find Missing Number in Array (1 to N)
Description: Given numbers from 1 to N with one missing, find the missing number.
Example:
Input:
[1, 2, 4, 5]
Output:
3
 */
int findMissingNumber(List<int> array) {
  int num = array.length + 1;
  int totalSum = num * (num + 1) ~/ 2;
  int actualSum = 0;
  for (int i = 0; i < array.length; i++) {
    actualSum += array[i];
  }
  int result = totalSum - actualSum;
  print(result);
  return result;
}
