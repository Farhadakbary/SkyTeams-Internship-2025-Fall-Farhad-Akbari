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
    throw ArgumentError('You should have at least two element in an array');
  }
  int largest;
  int secondLargest;
  if (arr[0] > arr[1]) {
    largest = arr[0];
    secondLargest = arr[1];
  } else {
    largest = arr[1];
    secondLargest = arr[0];
  }
  for (int i = 2; i < arr.length; i++) {
    int current = arr[i];
    if (current > largest) {
      secondLargest = largest;
      largest = current;
    } else if (current > secondLargest && current != largest) {
      secondLargest = current;
    }
  }

  return secondLargest;
}
