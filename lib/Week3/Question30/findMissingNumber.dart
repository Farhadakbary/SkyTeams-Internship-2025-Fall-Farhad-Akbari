/* Farhad Akbari
Week 2
11/22/2025
30. Find Missing Number in Array (1 to N)
Description: Given numbers from 1 to N with one missing, find the missing number.
Example:
Input:
[1, 2, 4, 5]
Output:
3
 */
int findMissingNumber(List<int> arr) {
  int n = arr.length + 1;

  int expectedSum = 0;
  for (int i = 1; i <= n; i++) {
    expectedSum += i;
  }

  int actualSum = 0;
  for (int num in arr) {
    actualSum += num;
  }

  return expectedSum - actualSum;
}
