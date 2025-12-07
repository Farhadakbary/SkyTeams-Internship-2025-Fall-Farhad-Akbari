/*
 Farhad Akbari
 12/6/2025
21. Longest Palindromic Substring
Input: "babad" → "bab" or "aba"
 */
String longestPalindrome(String s) {
  String res = "";
  int resLen = 0;
  for (int i = 0; i < s.length; i++) {
    int l = i;
    int r = i;
    while (l >= 0 && r < s.length && s[l] == s[r]) {
      int length = r - l + 1;
      if (length > resLen) {
        res = s.substring(l, r + 1);
        resLen = length;
      }
      l--;
      r++;
    }
    l = i;
    r = i + 1;
    while (l >= 0 && r < s.length && s[l] == s[r]) {
      int length = r - l + 1;
      if (length > resLen) {
        res = s.substring(l, r + 1);
        resLen = length;
      }
      l--;
      r++;
    }
  }
  return res;
}
void main(){
  print(longestPalindrome('abbab'));
}
