/*
 Farhad Akbari
 12/5/2025
17. Sentence Abbreviation
Description: Convert sentence into first-letter abbreviation.
Example: "I am learning JavaScript" → "I a l J"
 */
String abbreviation(String sentence){

  List<String>words= sentence.split(' ');
  List<String> initials=[];
  for(var word in words){
    if(word.isNotEmpty){
      initials.add(word[0]);
    }
  }
  return initials.join(' ');
}
void main(){
  print(abbreviation('I am learning Java'));
}