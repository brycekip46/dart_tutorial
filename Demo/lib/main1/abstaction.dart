import 'dart:io';
abstract class Account{
  String? type;
  int? balance;
  void deposit();
  void withdraw();

}
class currentAcc extends Account{
  currentAcc(){
    var acc;
    print("Type of account you wish to open?");
    acc=stdin.readLineSync()!;
    type=acc;
    print("Set the opening balance");
    balance=int.parse(stdin.readLineSync()!);
  }
  @override
  void deposit() {
    // TODO: implement deposit
    print("Enter amount you wish to deposit:");
  }

  @override
  void withdraw() {
    // TODO: implement withdraw
print("Enter amount you wish to withdraw");
int amount =int.parseInt(stdin.readLineSync()!);

if(balance <=amount){
balance=balance-amount;
print("Withdrawal successfull");

  } else {
print("insufficient  balance:");
}

}
class savingAccount extends Account{
  @override
  void deposit() {
    // TODO: implement deposit
  }

  @override
  void withdraw() {
    // TODO: implement withdraw
  }

}