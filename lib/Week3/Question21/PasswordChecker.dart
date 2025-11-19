/* Farhad Akbari
Week 2
11/18/2025
21. Password Strength Checker
Description: A strong password must:
• Be at least 8 characters long.
• Contain at least one uppercase letter, one lowercase letter, and one number.
Example:
Input:
MyPass123
Output:
Strong
Input:
pass
Output:
Weak
 */
enum PasswordOutputs { Weak, Strong }

bool myContains(String source, String password) {
  for (int i = 0; i < password.length; i++) {
    if (source.contains(password[i])) {
      return true;
    }
  }
  return false;
}

String passwordChecker(String password) {
  String letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String numbers = '0123456789';
  String chars = '!@#%^&*';

  bool hasLetter = myContains(letters, password);
  bool hasNumber = myContains(numbers, password);
  bool hasChar = myContains(chars, password);

  PasswordOutputs result;

  if (password.length >= 8 && hasLetter && hasNumber && hasChar) {
    result = PasswordOutputs.Strong;
  } else {
    result = PasswordOutputs.Weak;
  }

  return result == PasswordOutputs.Strong ? "Strong" : "Weak";
}
