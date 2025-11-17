/* Farhad Akbari
Week 2
11/11/2025
5. Compute Simple and Compound Interest
Description: Given Principal (P), Rate (R), and Time (T), compute:
Simple Interest = (P × R × T) / 100
Compound Interest = P × ((1 + R/100) ^ T - 1)
Example:
Input:
P = 1000, R = 5, T = 2
Output:
SI = 100, CI ≈ 102.5
 */

Map<String, double> temperatureConverter(double value, String type) {
  double result;

  if (type.toLowerCase() == 'c') {

    result = (value * 9 / 5) + 32;
    print('$value°C = $result°F');
    return {'celsius': value, 'fahrenheit': result};
  } else if (type.toLowerCase() == 'f') {

    result = (value - 32) * 5 / 9;
    print('$value°F = $result°C');
    return {'fahrenheit': value, 'celsius': result};
  } else {
    throw ArgumentError('Type must be "C" or "F"');
  }
}