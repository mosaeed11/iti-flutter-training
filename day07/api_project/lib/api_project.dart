import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  await getAllProducts();

  await getProductById(2);

  await getProductsLimit(5);

  await searchProduct("phone");
}

Future<void> getAllProducts() async {
  try {
    Uri url = Uri.parse("https://dummyjson.com/products");

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List products = data["products"];

      print("All Products:");

      for (var product in products) {
        print(product["title"]);
      }
    } else {
      print("Error : ${response.statusCode}");
    }
  } catch (e) {
    print("Exception : $e");
  }
}

Future<void> getProductById(int id) async {
  try {
    Uri url = Uri.parse("https://dummyjson.com/products/$id");

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> product = jsonDecode(response.body);

      print("ID : ${product["id"]}");
      print("Title : ${product["title"]}");
      print("Price : ${product["price"]}");
      print("Brand : ${product["brand"]}");
    } else {
      print("Product Not Found");
    }
  } catch (e) {
    print(e);
  }
}

Future<void> getProductsLimit(int limit) async {
  try {
    Uri url = Uri.parse("https://dummyjson.com/products?limit=$limit");

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List products = data["products"];

      for (var product in products) {
        print(product["title"]);
      }
    } else {
      print("Error");
    }
  } catch (e) {
    print(e);
  }
}

Future<void> searchProduct(String keyword) async {
  try {
    Uri url = Uri.parse("https://dummyjson.com/products/search?q=$keyword");

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List products = data["products"];

      if (products.isEmpty) {
        print("No Products Found");
      } else {
        for (var product in products) {
          print(product["title"]);
        }
      }
    } else {
      print("Error");
    }
  } catch (e) {
    print(e);
  }
}
