/* Farhad Akbari
Week 2
11/12/2025
13. Month name & number of days using switch-case
Description: Input a month number (1–12) and display its name and number of days.
Example:
Input:
2
Output:
February, 28 or 29 days 
 */
String monthDays(int monthNumber) {
  switch (monthNumber) {
    case 1:
      return 'January - 31 days';
    case 2:
      return 'February - 28 or 29 days';
    case 3:
      return 'March - 31 days';
    case 4:
      return 'April - 30 days';
    case 5:
      return 'May - 31 days';
    case 6:
      return 'June - 30 days';
    case 7:
      return 'July - 31 days';
    case 8:
      return 'August - 31 days';
    case 9:
      return 'September - 30 days';
    case 10:
      return 'October - 31 days';
    case 11:
      return 'November - 30 days';
    case 12:
      return 'December - 31 days';
    default:
      throw ArgumentError('Other numbers are not  month numbers (1–12)');
  }
}
