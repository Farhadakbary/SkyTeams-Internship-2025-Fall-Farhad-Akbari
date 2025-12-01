/*
 Farhad Akbari
 12/1/2025
Description: Move even numbers before odd numbers while maintaining order.
Example:
Input: [1, 2, 3, 4, 5, 6]
Output: [2, 4, 6, 1, 3, 5]
 */
List<int> reArrange(List<int> array){
  List<int> result=[];
  List<int> odds=[];
for(int i=0; i< array.length; i++){
  if(array[i] %2== 0){
    result.add(array[i]);
  }else{
    odds.add(array[i]);
  }
}
result.addAll(odds);
return result;
}
