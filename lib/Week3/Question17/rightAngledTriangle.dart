/* Farhad Akbari
Week 2
11/18/2025
17. Pattern Printing – Right-angled Triangle
Example:
Input:
4
Output:
*
**
***
****
 */
String rightAngledTriangle(int number) {
  String result = '';
  for (int i = 1; i <= number; i++) {
    for (int j = 1; j <= i; j++) {
      result += '*';
    }
    result += '\n';
  }
  return result;
}