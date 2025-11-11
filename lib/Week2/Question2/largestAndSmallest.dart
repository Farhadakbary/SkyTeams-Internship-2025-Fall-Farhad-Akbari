Map<String,int> largestAndSmallest(int firstNumber, int secondNumber, int thirdNumber) {
  int max = firstNumber;
  int min = firstNumber;

  //largest number
  /* first checks the first number and second number and change
   the max if needed then checks with the third one */
  if (secondNumber > max) max = secondNumber;
  if (thirdNumber > max) max = thirdNumber;

  //smallest number

  /* first checks the first number and second number and change
   the min if needed then checks with the third number */
  if (secondNumber < min) min = secondNumber;
  if (thirdNumber < min) min = thirdNumber;

  print('Largest: $max, Smallest: $min');


  return {'max': max, 'min': min};
}