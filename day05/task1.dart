void main(){
  print("1. Calculator");

  print(calc(10, 5, "+"));
  print(calc(10, 5, "-"));
  print(calc(10, 5, "*"));
  print(calc(10, 5, "/"));

  print("##########");
}
double calc(double a, double b, String operation) {
  switch (operation) {
    case "+":
      return a + b;

    case "-":
      return a - b;

    case "*":
      return a * b;

    case "/":
      if (b != 0) {
        return a / b;
      } else {
        print("Cannot divide by zero");
        return 0;
      }

    default:
      print("Invalid operation");
      return 0;
  }
}