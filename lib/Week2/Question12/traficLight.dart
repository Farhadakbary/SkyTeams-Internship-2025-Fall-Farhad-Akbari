/* Farhad Akbari
Week 2
11/12/2025
12.  Traffic Light System using switch-case
 */
String trafficLight(String color) {
 switch(color.toLowerCase()){
   case 'red':
     return 'Stop';
   case 'green':
     return 'Go';
   case 'yellow':
     return 'Ready';
 default: throw ArgumentError('Other color are not traffic light colors');
 }
}
