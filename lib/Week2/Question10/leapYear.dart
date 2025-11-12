/* Farhad Akbari
Week 2
11/11/2025
10. Leap Year Checker
 */
String leapYear(int year){
  if(year <= 0)  throw ArgumentError('Year is not negative bro');

  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    return 'Leap year';
  } else {
    return 'Not leap year';
  }
}