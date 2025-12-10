/*
 Farhad Akbari
 12/7/2025
 22. Merge Overlapping Intervals
Input: [[1,3],[2,6],[8,10]] → [[1,6],[8,10]]
 */
List<List<int>> mergeOverlapping(List<List<int>> interval) {
  if (interval.isEmpty) return [];
  for (int i = 0; i < interval.length - 1; i++) {
    for (int j = 0; j < interval.length - i - 1; j++) {
      if (interval[j][0] > interval[j + 1][0]) {
        List<int> temp = interval[j];
        interval[j] = interval[j + 1];
        interval[j + 1] = temp;
      }
    }
  }
  List<List<int>> result = [];
  result.add([interval[0][0], interval[0][1]]);

  for (int i = 0; i < interval.length; i++) {
    List<int> current = interval[i];
    List<int> last = result.last;

    if (current[0] <= last[1]) {
      last[1] = last[1] > current[1] ? last[1] : current[1];
    } else {
      result.add([current[0], current[1]]);
    }
  }
  return result;
}
