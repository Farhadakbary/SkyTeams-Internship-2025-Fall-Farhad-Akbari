/* Farhad Akbari
Week 2
11/12/2025
14. Check character type
 */
String charectarChecker(String char) {
  if(char.length != 1){
    throw ArgumentError('Enter only one character');
  }
  String charectar = char.toLowerCase();

  if ('aeiou'.contains(charectar)) {
    return 'Vowel';
  } else if ('bcdfghjklmnpqrstvwyxz'.contains(charectar)) {
    return 'Consonant';
  } else if ('0123456789'.contains(charectar)) {
    return 'Number';
  } else {
    return 'Special Character';
  }
}
