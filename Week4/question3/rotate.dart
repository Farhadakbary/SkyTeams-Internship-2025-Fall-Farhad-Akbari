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
  if (n == 0) return [];
  k = k % n;
  void reverse(int start, int end) {
    while (start < end) {
      int temp = arr[start];
      arr[start] = arr[end];
      arr[end] = temp;
      start++;
      end--;
    }
  }
  reverse(0, n - 1);
  reverse(0, k - 1);
  reverse(k, n - 1);
  return arr;
}
