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