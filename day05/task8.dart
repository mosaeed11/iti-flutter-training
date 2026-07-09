void main(){
  print("8. Maximum Number");

  List<int> numbers = [10, 5, 20, 3];

  print(findMax(numbers));
}
int findMax(List<int> numbers) {
  int maximumNumber = numbers[0];

  for (int number in numbers) {
    if (number > maximumNumber) {
      maximumNumber = number;
    }
  }

  return maximumNumber;
}