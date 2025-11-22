/* Farhad Akbari
11/22/2025
27. Find Unique Elements in an Array
Description: Return an array with only unique elements from the input array.
Example:
Input:
[1, 2, 2, 3, 4, 4, 5]
Output:
[1, 2, 3, 4, 5]
 */
List<int> uniqueElements(List<int> arr) {
  List<int> unique = [];

  for (int i = 0; i < arr.length; i++) {
    int current = arr[i];
    bool exists = false;

    for (int j = 0; j < unique.length; j++) {
      if (unique[j] == current) {
        exists = true;
        break;
      }
    }

    if (!exists) {
      unique.add(current);
    }
  }

  for (int i = 0; i < unique.length - 1; i++) {
    for (int j = 0; j < unique.length - i - 1; j++) {
      if (unique[j] > unique[j + 1]) {
        int temp = unique[j];
        unique[j] = unique[j + 1];
        unique[j + 1] = temp;
      }
    }
  }

  return unique;
}
