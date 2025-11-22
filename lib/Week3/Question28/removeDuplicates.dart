/* Farhad Akbari
Week 2
11/22/2025
28. Remove Duplicates from an Array
Description: Remove duplicate elements efficiently from an array.
Example:
Input:
[3, 1, 3, 5, 1]
Output:
[3, 1, 5]
 */
List<int> removeDuplicates(List<int> arr) {
  List<int> arr2 = [];

  for (int i = 0; i < arr.length; i++) {
    int current = arr[i];
    bool exists = false;

    for (int j = 0; j < arr2.length; j++) {
      if (arr2[j] == current) {
       exists = true;
        break;
      }
    }

    if (!exists) {
      arr2.add(current);
    }
  }

  return arr2;
}
