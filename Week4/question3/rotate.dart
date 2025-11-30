/*
 Farhad Akbari
 11/30/2025
3. Rotate Array K Times to the Right
Description: Rotate elements of an array K times to the right.
Example:
Input: [1, 2, 3, 4, 5], K = 2
Output: [4, 5, 1, 2, 3]
 */
List<int> rotateRight(List<int> arr, int k) {
  int n = arr.length;
  k = k % n;

  List<int> sectionOne = arr.sublist(n - k);
  List<int> sectionTwo = arr.sublist(0, n - k);
  List<int> result = [];
  result.addAll(sectionOne);
  result.addAll(sectionTwo);
  return result;
}
