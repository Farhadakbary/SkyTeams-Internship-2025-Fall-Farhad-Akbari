/* Farhad Akbari
Week 2
11/11/2025
5. Compute Simple and Compound Interest
Description: Given Principal (P), Rate (R), and Time (T), compute:
Simple Interest = (P × R × T) / 100
Compound Interest = P × ((1 + R/100) ^ T - 1)
Example:
Input:
P = 1000, R = 5, T = 2
Output:
SI = 100, CI ≈ 102.5
 */

import 'dart:math';

Map<String, double> simpleAndCompoundinterest (double principle, double rate, double time){
  double simpleInterest= (principle * rate * time) / 100;
  double compoundInterest=  principle * (pow((1 + rate/100),time) - 1);

  print('simpleInterest: $simpleInterest, compoundInterest: $compoundInterest');
  return{'simpleInterest': simpleInterest, 'compoundInterest': compoundInterest};
}