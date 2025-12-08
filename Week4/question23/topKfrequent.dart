// /*
//  Farhad Akbari
//  12/7/2025
// 23. Top K Frequent Elements
// Input: [1,1,1,2,2,3], k=2 → [1,2]
//  */
// List<int> topKFrequents(List<int> array, int k) {
//   if (array.isEmpty) return [];
//
//   Map<int, int> frequency = {};
//   for (var num in array) {
//     frequency[num] = (frequency[num] ?? 0) + 1;
//   }
//   List<List<int>> entries = [];
//   frequency.forEach((key, value) {
//     entries.add([key, value]);
//   });
//   int partition(List<List<int>> arr, int low, int high) {
//     int pivot = arr[high][1];
//     int i = low - 1;
//
//     for (int j = low; j < high; j++) {
//       if (arr[j][1] > pivot) {
//         i++;
//         List<int> temp = arr[i];
//         arr[i] = arr[j];
//         arr[j] = temp;
//       }
//     }
//
//     List<int> temp = arr[i + 1];
//     arr[i + 1] = arr[high];
//     arr[high] = temp;
//
//     return i + 1;
//   }
//
//   void quickSort(List<List<int>> arr, int low, int high) {
//     if (low < high) {
//       int p = partition(arr, low, high);
//       quickSort(arr, low, p - 1);
//       quickSort(arr, p + 1, high);
//     }
//   }
//
//   quickSort(entries, 0, entries.length - 1);
//   List<int> result = [];
//   for (int i = 0; i < k && i < entries.length; i++) {
//     result.add(entries[i][0]);
//   }
//   return result;
// }
//
// void main() {
//   print(topKFrequents([1, 1, 1, 2, 2, 3], 2));
// }