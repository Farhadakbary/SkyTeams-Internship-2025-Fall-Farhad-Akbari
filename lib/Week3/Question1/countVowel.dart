/* Farhad Akbari
11/16/2025
1. Count vowels in a string
Description: Count the number of vowels (a, e, i, o, u) in a given string.
Example:
Input:
"SkyTeams Internship"
Output:
6
 */

int countVowels (String text){
  const vowel= 'aeiouAEIOU';
  int countVowel= 0;
  bool myContains(String source, String target) {
    for (int i = 0; i < source.length; i++) {
      if (source[i] == target) {
        return true;
      }
    }
    return false;
  }
  for(int i= 0; i< text.length;i++){
    if(myContains(vowel,text[i])){
      countVowel ++;
    }
  }
  return countVowel;
}
