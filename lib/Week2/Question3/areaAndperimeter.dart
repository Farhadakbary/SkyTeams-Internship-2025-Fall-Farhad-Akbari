/* Farhad Akbari
Week 2
11/11/2025
3. Calculate the area and perimeter of a rectangle
Description: Given length and width, calculate and display both area and perimeter.
Example:
Input:
length = 4, width = 6
Output:
Area: 24, Perimeter: 20
 */

Map<String, int> areaAndPerimeter(int width, int length) {
  int area = width * length;
  int perimeter = 2 * (width + length);
  print('area: $area, perimeter: $perimeter');
  return {'area': area, 'perimeter': perimeter};
}
