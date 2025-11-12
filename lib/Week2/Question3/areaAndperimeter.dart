/* Farhad Akbari
Week 2
11/11/2025
 2:Calculate the area and perimeter of a rectangle
 */

Map<String, int> areaAndPerimeter(int width, int length) {
  int area = width * length;
  int perimeter = 2 * (width + length);
  print('area: $area, perimeter: $perimeter');
  return {'area': area, 'perimeter': perimeter};
}
