/* Farhad Akbari
Week 2
11/15/2025
25. Find LCM of two numbers
Description: Compute least common multiple using the relationship: LCM(a, b) = (a × b) /
GCD(a, b)
Example:
Input:
12, 18
Output:
36
 */
import 'package:sky/Week2/Question24/gcd.dart';

int findLCM (int firstNumber, int secondNumber){
  
  return (firstNumber * secondNumber) ~/ findGCD(firstNumber, secondNumber);
}