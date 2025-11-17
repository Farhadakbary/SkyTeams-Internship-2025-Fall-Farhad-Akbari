/* Farhad Akbari
Week 2
11/14/2025
22. Print even numbers in a range
Description: Input start and end values, print all even numbers between them.
Example:
Input:
1, 10
Output:
2, 4, 6, 8, 10
 */
String printEvenNumbers(int start, int end) {
  List<String> evenNumbers = [];
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      evenNumbers.add('$i');
    }
  }
  return evenNumbers.join(', ');
}
