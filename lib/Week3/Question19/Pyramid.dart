/* Farhad Akbari
11/18/2025
19. Pattern Printing – Pyramid
Example:
Input:
5
Output:
    *
   ***
  *****
 *******
*********
 */
String printPyramid(int number) {
  String result = '';
  for (int i = 1; i <= number; i++) {
    for (int j = 1; j <= number - i; j++) {
      result += ' ';
    }
    for (int k = 1; k <= 2 * i - 1; k++) {
      result += '*';
    }
    if (i < number) {
      result += '\n';
    }
  }
  return result;
}