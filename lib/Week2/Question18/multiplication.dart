// Farhad Akbari
// Week 2
// 11/13/2025
//
// 18. Multiplication table of a number
// Description: Print the multiplication table for a given number (up to 10 or N).
// Example:
// Input:
// 5
// Output:
// 5 × 1 = 5
// 5 × 2 = 10
// …
// 5 × 10 = 50
String multiplication(int number){
  List<String> lineOfMultiply=[];
  for(int i=1; i<=10; i++){
  lineOfMultiply.add(('$number × $i = ${number * i}'));
  }
  return lineOfMultiply.join('\n');
}