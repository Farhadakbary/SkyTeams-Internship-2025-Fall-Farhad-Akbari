/* Farhad Akbari
Week 2
11/11/2025
9. Grade Calculator (0–100 → A–F)
Description: Input a student’s marks (0–100) and print the grade based on a scale.
Example:
Input:
85
Output:
B
 */
String calculateGrade(int marks) {
  if (marks < 0 || marks > 100) {
    throw ArgumentError('Marks must be between 0 and 100');
  }

  if (marks >= 90) return 'A';
  else if (marks >= 80) return 'B';
  else if (marks >= 70) return 'C';
  else if (marks >= 60) return 'D';
  else if (marks >= 50) return 'E';
  else return 'F';
}
