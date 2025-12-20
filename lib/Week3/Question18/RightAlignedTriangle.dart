/* Farhad Akbari
11/18/2025
18. Pattern Printing – Right-aligned Triangle
Example:
Input:
4
Output:
*
**
***
****
 */
String printRightAlignedTriangle(int number) {
  String result = '';
  for (int i = 1; i <= number; i++) {
    for (int j = 1; j <= number - i; j++) {
      result += ' ';
    }
    for (int k = 1; k <= i; k++) {
      result += '*';
    }
    result += '\n';
  }
  return result;
}