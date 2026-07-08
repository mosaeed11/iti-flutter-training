import 'dart:io';
void main() {
  // Challenge 1: 

  print("Login System");

  stdout.write("Enter Username: ");
  String username = stdin.readLineSync()!;

  stdout.write("Enter Password: ");
  String password = stdin.readLineSync()!;

  if (username == "admin" && password == "1234") {
    print("Welcome Boss");
  } else {
    print("Wrong Password or Username");
  }
  

  // Challenge 2: 

  print("Email Validation");

  stdout.write("Enter Email: ");
  String email = stdin.readLineSync()!;

  bool isValid =
      email.endsWith("gmail.com") &&
      email.contains("@") &&
      !email.contains(" ") &&
      int.tryParse(email[0]) == null &&
      email.toLowerCase() == email;

  if (isValid) {
    print("Valid Email");
  } else {
    print("Invalid Email");
  }

  // Challenge 3: 

  print("Perfect Employee ");

  stdout.write("Enter Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Years of Experience: ");
  int experience = int.parse(stdin.readLineSync()!);

  if ((age >= 21 && experience >= 3) || age >= 30) {
    print("Employee Accepted");
  } else {
    print("Employee Rejected");
  }

  // Challenge 4: 

  print("Constants");

  const String apiKey = "ABC123XYZ";
  final DateTime birthDate = DateTime.now();

  print("API Key (const): $apiKey");
  print("Birth Date Example (final): $birthDate");


  // Challenge 5: 

  print("Hide Visa Card");

  String cardNumber = "3456-9012-5678-1234";

  String hiddenCard = cardNumber.substring(0, 5) + "****-****-****";

  print("Original Card : $cardNumber");
  print("Hidden Card   : $hiddenCard");
}
