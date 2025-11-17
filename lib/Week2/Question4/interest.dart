/* Farhad Akbari
Week 2
11/11/2025
4. Temperature converter (Celsius ↔ Fahrenheit)
Description: Convert temperature from Celsius to Fahrenheit and vice versa.
Formula:
F = (C × 9/5) + 32
C = (F - 32) × 5/9
Example:
Input:
C = 25
Output:
F = 77
 */

import 'dart:math';

Map<String, double> simpleAndCompoundinterest (double principle, double rate, double time){
  double simpleInterest= (principle * rate * time) / 100;
  double compoundInterest=  principle * (pow((1 + rate/100),time) - 1);

  print('simpleInterest: $simpleInterest, compoundInterest: $compoundInterest');
  return{'simpleInterest': simpleInterest, 'compoundInterest': compoundInterest};
}