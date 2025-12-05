/*
 Farhad Akbari
 12/1/2025
Description: Move even numbers before odd numbers while maintaining order.
Example:
Input: [1, 2, 3, 4, 5, 6]
Output: [2, 4, 6, 1, 3, 5]
 */
List<int> reArrange(List<int> array) {
  int n = array.length;
  List<int> result = List.filled(n, 0);
  int index = 0;
  for (int i = 0; i < n; i++) {
    if (array[i] % 2 == 0) {
      result[index] = array[i];
      index++;
    }
  }
  for (int i = 0; i < n; i++) {
    if (array[i] % 2 != 0) {
      result[index] = array[i];
      index++;
    }
  }

  return result;
}
