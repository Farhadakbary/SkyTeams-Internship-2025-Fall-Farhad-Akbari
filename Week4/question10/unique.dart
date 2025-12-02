/*
 Farhad Akbari
 12/2/2025
10. Check Unique Characters
Description: Return whether a string contains only unique chars.
Example:
"hello" → Not Unique
 */
bool isUniqueString(String text){

  for(int i=0; i < text.length; i++){
    for(int j=i+1; j <text.length; j++){
      if(text.isEmpty)'The text is empty';
      if(text[i]==text[j]){
        print('$text is Not Unique String');
        return false;
      }
    }
  }
  print('$text is Unique String');
  return true;
}
