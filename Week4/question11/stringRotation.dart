/*
 Farhad Akbari
 12/2/2025
11. String Rotation Check
Description: Check if one string is rotation of another.
Example:
"waterbottle", "erbottlewat" → True
 */
bool isRotation(String text, String rotated) {
  if (text.length != rotated.length) return false;

  int n = text.length;
  for (int start = 0; start < n; start++) {
    if (text[start] != rotated[0]) continue;
    bool match = true;
    for (int i = 0; i < n; i++) {
      int rotatedIndex = (start + i) % n;
      if (text[rotatedIndex] != rotated[i]) {
        match = false;
        break;
      }
    }
    if (match) return true;
  }
  return false; 
}

