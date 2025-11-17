/* Farhad Akbari
Week 2
11/13/2025
16. Print numbers from 1 to 100
Description: Use a loop to print num\bers sequentially.
Example:
Output:
1, 2, 3, …, 100
 */
String printNumbers(int start, int end) {

  if (start > end) {
    throw ArgumentError('Start must be less than or equal to end');
  }

  List<String> listNumbers = [];

  for (int i = start; i <= end; i++) {
    listNumbers.add(i.toString());
  }

  String result = listNumbers.join(", ");
  print(result);
  return result;
}
