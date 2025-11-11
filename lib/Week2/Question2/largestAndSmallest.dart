Map<String,int> largestAndSmallest(int firstNumber, int secondNumber, int thirdNumber) {
  int max = firstNumber;
  int min = firstNumber;

  //largest number
  if (secondNumber > max) max = secondNumber;
  if (thirdNumber > max) max = thirdNumber;

  //smallest number
  if (secondNumber < min) min = secondNumber;
  if (thirdNumber < min) min = thirdNumber;

  print('Largest: $max, Smallest: $min');


  return {'max': max, 'min': min};
}