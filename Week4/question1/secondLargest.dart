/*
 Farhad Akbari
 11/30/2025
 1. Find Second Largest Number in an Array
Description: Find the second largest number without sorting the array.
Example:
Input: [10, 20, 4, 45, 99]
Output: 45
 */
int secondLargest(List<int> arr) {
  if (arr.length < 2) {
    throw ArgumentError("Array must have at least two elements");
  }

  int largest = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > largest) {
      largest = arr[i];
    }
  }

  int? secondLargest;
  for (int value in arr) {
    if (value != largest) {
      if (secondLargest == null || value > secondLargest) {
        secondLargest = value;
      }
    }
  }

  if (secondLargest == null) {
    throw ArgumentError("No second largest value found (all elements equal)");
  }

  return secondLargest;
}
