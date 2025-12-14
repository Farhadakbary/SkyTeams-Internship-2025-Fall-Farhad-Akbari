/* Farhad Akbari
12/12/2025
6. Remove Adjacent Duplicates
Problem:
Given a string s, repeatedly remove adjacent pairs of equal characters.
Example:
Input: "abbaca"
Output: "ca"
 */
String adjacentDuplicate(String s){
  List<String> stack=[];
  for(var char in s.split('')){
    if(stack.isNotEmpty && stack.last == char){
      stack.removeLast();
    }else{
      stack.add(char);
    }
  }
  String result='';
  for(var c in stack){
    result += c;
  }
  return result;
}
void main(){
  print(adjacentDuplicate('abbaca'));
}