import 'package:sky/Week2/Question12/traficLight.dart';
import 'package:test/test.dart';

void main() {
  test('Green should return go', () {
    expect(trafficLight('green'), equals('Go'));
  });
  test('Yellow should return ready', () {
    expect(trafficLight('yellow'), equals('Ready'));
  });
  test('Red should return stop', () {
    expect(trafficLight('red'), equals('Stop'));
  });
}
