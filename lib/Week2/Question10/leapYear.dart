/* Farhad Akbari
Week 2
11/11/2025
10. Leap Year Checker
Description: Determine if a given year is a leap year.
Rule: Year divisible by 4 → leap year, except centuries not divisible by 400.
Example:
Input:
2000
Output:
Leap year
Input:
1900
Output:
Not leap year
 */
String leapYear(int year){
  if(year <= 0)  throw ArgumentError('Year is not negative bro');

  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    return 'Leap year';
  } else {
    return 'Not leap year';
  }
}