/* Farhad Akbari
Week 2
11/11/20257.
2. Test a function that reverses a string/list.
 */

String reverseString(String input){
  return  input.split('').reversed.join();
}

List<T> reverseList<T>(List<T> input) {
  return input.reversed.toList();
}