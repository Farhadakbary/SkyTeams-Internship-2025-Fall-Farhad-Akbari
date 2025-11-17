/* Farhad Akbari
Week 2
11/12/2025
12. Traffic Light System using switch-case
Description: Input a color (Red, Yellow, Green) and display an action (Stop, Ready, Go).
Example:
Input:
Green
Output:
Go
 */
enum TrafficColor { red, yellow, green }

String trafficLight(TrafficColor color) {
  switch (color) {
    case TrafficColor.red:
      return 'Stop';
    case TrafficColor.yellow:
      return 'Ready';
    case TrafficColor.green:
      return 'Go';
  }
}

