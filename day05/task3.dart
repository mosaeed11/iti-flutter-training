import 'dart:io';

void main(){
   print("3. Password Validation");

  print(checkPassword("flutter123"));
  print(checkPassword(" dart"));
  print(checkPassword(stdin.readLineSync()!));

}
bool checkPassword(String password) {
  final trimmed = password.trim();

  if (trimmed.length <= 6 ) {
    print(
      "Password must be longer than 6 characters and cannot continue a space.",
    );
    return false;
  } else {
    print("Password is valid.");
    return true;
  }
}
