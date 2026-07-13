void main() {
  List<int> numbers = [1,2,3,4,5];

  print(numbers.reversedList());

  print(1000000.withComma());

  print(DateTime.now().formatDate());
}

extension ReverseList<int> on List<int> {
  List<int> reversedList() {
    return reversed.toList();
  }
}

extension NumberFormatter on int {
  String withComma() {
    String number = toString();

    String result = "";

    int counter = 0;

    for (int i = number.length - 1; i >= 0; i--) {
      result = number[i] + result;
      counter++;

      if (counter == 3 && i != 0) {
        result = ",$result";
        counter = 0;
      }
    }

    return result;
  }
}

extension DateFormatter on DateTime {
  String formatDate() {
    String d = day.toString().padLeft(2, '0');
    String m = month.toString().padLeft(2, '0');

    return "$d/$m/$year";
  }
}