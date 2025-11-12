/* Farhad Akbari
Week 2
11/11/2025
5. Compute Simple and Compound Interest
 */

import 'dart:math';

Map<String, double> simpleAndCompoundinterest (double principle, double rate, double time){
  double simpleInterest= (principle * rate * time) / 100;
  double compoundInterest=  principle * (pow((1 + rate/100),time) - 1);

  print('simpleInterest: $simpleInterest, compoundInterest: $compoundInterest');
  return{'simpleInterest': simpleInterest, 'compoundInterest': compoundInterest};
}