/* Farhad Akbari
Week 2
11/11/2025
8. Determine if a number is positive, negative, or zero
 */

String positiveNegativeZero (double number){
  if(number >0 ){
    return 'Positive';
  }else if(number < 0){
    return 'Negative';
  }
  else{
    return 'Zero';
  }
}