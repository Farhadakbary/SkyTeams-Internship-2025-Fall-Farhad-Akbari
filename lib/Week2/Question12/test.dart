import 'package:sky/Week2/Question12/traficLight.dart';
import 'package:test/test.dart';

void main() {
  test('Red light should return Stop', () {
    expect(trafficLight(TrafficColor.red), equals('Stop'));
  });

  test('Yellow light should return Ready', () {
    expect(trafficLight(TrafficColor.yellow), equals('Ready'));
  });

  test('Green light should return Go', () {
    expect(trafficLight(TrafficColor.green), equals('Go'));
  });

  test('Passing invalid type should throw error', () {
    expect(() => trafficLight(TrafficColor.values.firstWhere((c) => false)), throwsA(isA<StateError>()));
  });
}
