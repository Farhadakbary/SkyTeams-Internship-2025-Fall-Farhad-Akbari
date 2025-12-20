/* Farhad Akbari
Week 2
11/11/20257.
3. Test a function that finds the largest number in a collection.
 */

int largest(List<int> list){
  int max=list[0];
  for(int i=0; i< list.length;i++){
    if(list[i] > max){
      max= list[i];
    }
  }
  return max;
}