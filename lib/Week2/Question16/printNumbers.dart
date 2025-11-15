/* Farhad Akbari
Week 2
11/13/2025
16. Print numbers from 1 to 100
 */
String print1to100 (){
  List<String> listNumbers =[];
  for(int i =1; i <= 100;i++){
    listNumbers.add(i.toString());
  }
  return listNumbers.join(", ");
}