void main(){
  print("7. Prime Number");

  print(isPrime(7));
  print(isPrime(10));

}
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
