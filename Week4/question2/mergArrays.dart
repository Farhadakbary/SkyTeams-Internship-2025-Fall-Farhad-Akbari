/*
 Farhad Akbari
 11/30/2025
2. Merge Two Sorted Arrays
Description: Merge two sorted arrays into a single sorted array.
Example:
Input: [1, 3, 5], [2, 4, 6]
Output: [1, 2, 3, 4, 5, 6]
 */
List<int> mergeArrays(List<int> firstArray, List<int> secondArray) {
  int i = 0;
  int j = 0;
  List<int> result = [];
  while (i < firstArray.length && j < secondArray.length) {
    if (firstArray[i] <= secondArray[j]) {
      result.add(firstArray[i]);
      i++;
    } else {
      result.add(secondArray[j]);
      j++;
    }
  }
  result.addAll(firstArray.sublist(i));
  result.addAll(secondArray.sublist(j));

  return result;
}
