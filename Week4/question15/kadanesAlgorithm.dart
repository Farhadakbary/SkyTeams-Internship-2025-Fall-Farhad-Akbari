/*
 Farhad Akbari
 12/5/2025
 15. Kadane’s Algorithm (Max Subarray Sum)
Example:
[-2,1,-3,4,-1,2,1,-5,4] → 6
 */
int kadane(List<int> array) {
  if (array.isEmpty) return 0;

  int maxEnding = array[0];
  int maxSoFar = array[0];

  for (int i = 1; i < array.length; i++) {
    maxEnding = (array[i] > maxEnding + array[i])
        ? array[i]
        : maxEnding + array[i];
    maxSoFar = (maxSoFar > maxEnding) ? maxSoFar : maxEnding;
  }
  print(maxSoFar);
  print(maxEnding);
  return maxSoFar;
}
