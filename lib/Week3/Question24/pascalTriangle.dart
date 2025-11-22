/* Farhad Akbari
Week 2
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
List<List<int>> pascalTriangle(int rows) {
  List<List<int>> triangle = [];

  for (int i = 0; i < rows; i++) {

    List<int> row = [];
    for (int k = 0; k < i + 1; k++) {
      row.add(1);
    }

    for (int j = 1; j < i; j++) {
      row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
    }

    triangle.add(row);
  }

  return triangle;
}
