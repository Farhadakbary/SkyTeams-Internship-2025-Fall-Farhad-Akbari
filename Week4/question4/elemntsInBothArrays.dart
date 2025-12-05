/*
 Farhad Akbari
 12/1/2025
4. Intersection of Two Arrays
Description: Return elements present in both arrays.
Example:
Input: [1, 2, 3, 4], [3, 4, 5, 6]
Output: [3, 4]
 */
List<int> elementsInBothArrays(List<int> firstArray, List<int> secondArray) {
  Set<int> setSecond = secondArray.toSet();
  List<int> result = [];
  for (var item in firstArray) {
    if (setSecond.contains(item)) {
      result.add(item);
    }
  }
  return result;
}
