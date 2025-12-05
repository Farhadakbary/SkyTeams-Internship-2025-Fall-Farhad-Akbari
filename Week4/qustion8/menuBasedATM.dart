/*
 Farhad Akbari
 12/1/2025
 8. Menu-Based ATM System
Description: Handle options for balance, withdraw, deposit, exit.
Example: "100 withdrawn successfully"
 */
import 'dart:io';

void menuATM() {
  double balance = 1000.0;
  bool running = true;

  while (running) {
    print('\n--- ATM Menu ---');
    print('1. Withdraw');
    print('2. Deposit');
    print('3. Check Balance');
    print('4. Exit');
    stdout.write('Choose an option 1 to 4): ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        stdout.write('Enter amount to withdraw: ');
        double? withdrawAmount = double.tryParse(stdin.readLineSync()!);
        if (withdrawAmount != null && withdrawAmount > 0) {
          if (withdrawAmount <= balance) {
            balance -= withdrawAmount;
            print(
              'Withdrawal successful. New balance: \$${balance.toStringAsFixed(2)}',
            );
          } else {
            print('Insufficient balance!');
          }
        } else {
          print('Invalid amount!');
        }
        break;
      case '2':
        stdout.write('Enter amount to deposit: ');
        double? depositAmount = double.tryParse(stdin.readLineSync()!);
        if (depositAmount != null && depositAmount > 0) {
          balance += depositAmount;
          print(
            'Deposit successful. New balance: \$${balance.toStringAsFixed(2)}',
          );
        } else {
          print('Invalid amount!');
        }
        break;

      case '3':
        print('Your current balance is: \$${balance.toStringAsFixed(2)}');
        break;

      case '4':
        print('Exiting the ATM. Goodbye!');
        running = false;
        break;

      default:
        print('Invalid option. Please choose 1-4.');
    }
  }
}
