import 'dart:io';

void main() {
  // task 1

  stdout.write("Enter Username: ");
  String username = stdin.readLineSync()!;

  if (username == "admin") {
    print("اهلا يزعيم");
  } else {
    print("اهلا ي ضيف");
  }

  print("\n#####\n");

  // task 2

  stdout.write("Enter Product Name: ");
  String product = stdin.readLineSync()!;

  product = product.trim().toLowerCase();

  stdout.write("Enter Product Price: ");
  double price = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Quantity: ");
  int quantity = int.parse(stdin.readLineSync()!);
  print("\nProduct Added Successfully!");
  print("\n########\n");

  // task 3
  double total = price * quantity;
  if ((product == "juice" || product == "milk") && quantity > 10) {
    total = total - (total * 0.15);
    print("15% Discount Applied!");
  }
  print("\n INVOICE ");
  print("Product : $product");
  print("Price   : $price");
  print("Quantity: $quantity");
  print("Total   : $total");
  print("\n#####\n");

  // task 4
  print("1- Show Product Details");
  print("2- Update Quantity");
  print("3- Exit");
  stdout.write("Choose Option: ");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("\nProduct : $product");
      print("Price   : $price");
      print("Quantity: $quantity");
      print("Total   : $total");
      break;

    case 2:
      stdout.write("Enter New Quantity: ");
      quantity = int.parse(stdin.readLineSync()!);
      total = price * quantity;
      if ((product == "juice" || product == "milk") && quantity > 10) {
        total = total - (total * 0.15);
      }
      print("Quantity Updated Successfully!");
      print("New Total = $total");
      break;

    case 3:
      print("Good Bye");
      break;
    default:
      print("Invalid Choice");
  }
}