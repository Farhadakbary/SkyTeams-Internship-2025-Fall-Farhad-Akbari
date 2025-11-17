/* Farhad Akbari
Week 2
11/13/2025
16. Print numbers from 1 to 100
Description: Use a loop to print num\bers sequentially.
Example:
Output:
1, 2, 3, …, 100
 */
String printNumbers (int start, int end){
  List<String> listNumbers =[];
  for(int i =start; i <= end;i++){
    listNumbers.add(i.toString());
  }
  return listNumbers.join(", ");
}