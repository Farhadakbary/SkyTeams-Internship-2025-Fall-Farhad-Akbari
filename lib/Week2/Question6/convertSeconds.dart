/* Farhad Akbari
Week 2
11/11/2025
6. Convert total seconds into hours, minutes, and seconds
 */

Map<String, double> secondConverter(double second, String type) {
  double result;

  if (type.toLowerCase() == 'm') {

    result = second /60;
    print('$second s = $result m');
    return {'second': second, 'minute': result};
  } else if (type.toLowerCase() == 'h') {

    result = second /60 /60;
    print('$second s = $result h');
    return {'second': second, 'hours': result};
  } else {
    throw ArgumentError('Type must be "m" or "h"');
  }
}