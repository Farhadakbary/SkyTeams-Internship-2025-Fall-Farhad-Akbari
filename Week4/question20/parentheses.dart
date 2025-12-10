/*
 Farhad Akbari
 12/6/2025
20. Check Balanced Parentheses
Input: "{[()]}" → Output: Balanced
 */
bool isBalanced(String array){
  List<String> result=[];
  Map<String,String> parentheses={
    ")":"(",
    "}":"{",
    "]":"[",
  };
  for(var char in array.split('')){
    if(char =='(' || char=='[' || char=='{'){
      result.add(char);
    }
    else if(parentheses.containsKey(char)){
      if(result.isEmpty)return false;
      if(result.removeLast() !=parentheses[char]) return false;
    }
  }
  return result.isEmpty;
}
