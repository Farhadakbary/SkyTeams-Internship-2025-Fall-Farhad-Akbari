int swapAandB(int a, int b) {
  a = a + b;
  b = a - b;
  a = a - b;
/* example if a=5 and b=3  in the first step the a become
 8 and in the second step b will become 5 and in the
 last step a will become 3 and the reverse is done */
  print('After swap: a = $a, b = $b');
  return b;
}