/*
 Farhad Akbari
 12/5/2025
17. Sentence Abbreviation
Description: Convert sentence into first-letter abbreviation.
Example: "I am learning JavaScript" → "I a l J"
 */
String abbreviation(String sentence){

  List<String>words= sentence.split(' ');
  List<String> abbreviations=[];
  for(var word in words){
    if(word.isNotEmpty){
      abbreviations.add(word[0]);
    }
  }
  return abbreviations.join(' ');
}
