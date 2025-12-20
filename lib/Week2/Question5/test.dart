import 'package:sky/Week2/Question5/temprature_converter.dart';
import 'package:test/test.dart';

void main() {
  test('Convert Celsius to Fahrenheit', () {
    final result = temperatureConverter(0, 'C');
    expect(result['fahrenheit'], closeTo(32, 0.001));
  });

  test('Convert Fahrenheit to Celsius', () {
    final result = temperatureConverter(212, 'F');
    expect(result['celsius'], closeTo(100, 0.001));
  });
}
