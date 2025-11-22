/* Farhad Akbari
Week 2
11/22/2025
29. Check if Two Arrays Are Equal
Description: Compare two arrays and determine if they contain the same elements in the same
order.
Example:
Input:
[1, 2, 3], [1, 2, 3]
Output:
Equal
 */
bool arraysEqual(List<int> a, List<int> b) {
  if (a.length != b.length) return false;
  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}