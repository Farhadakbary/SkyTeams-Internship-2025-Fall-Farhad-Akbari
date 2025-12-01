/*
 Farhad Akbari
 12/1/2025
4. Intersection of Two Arrays
Description: Return elements present in both arrays.
Example:
Input: [1, 2, 3, 4], [3, 4, 5, 6]
Output: [3, 4]
 */
List<int> elementsInBothArrays(List<int> firstArray, List<int> secondArray){
List<int> result=[];
for(int i=0; i<firstArray.length;i++){
  for(int j=0; j< secondArray.length;j++){
    if(firstArray[i]==secondArray[j]){
      result.add(secondArray[j]);
    }
  }
}
return result;
}
