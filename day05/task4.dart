void main(){
print("4. Search Using Where");

  List<String> names = ["Samy", "Amr", "Ali", "ahmed"];

  List<String> namesStartWithA = names
      .where((name) => name.toLowerCase().startsWith("a"))
      .toList();

  print(namesStartWithA);

}