/* Farhad Akbari
11/22/2025
24. Generate Pascal’s Triangle
Description: Implement pascalTriangle(rows), which prints Pascal’s Triangle up to n rows.
Example:
Input:
5
Output:
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
 */
void pascalTriangle(int rows) {
  List<List<int>> triangle = [];
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        row.add(1);
      } else {
        int value = triangle[i - 1][j - 1] + triangle[i - 1][j];
        row.add(value);
      }
    }
    triangle.add(row);
  }
  for (List<int> row in triangle) {
    print(row.join(' '));
  }
}
