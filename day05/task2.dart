void main(){
   print("2. Prices After Tax");

  List<double> prices = [10, 20, 30];

  List<double> pricesAfterTax = prices
      .map((price) => price + (price * 0.14))
      .toList();

  print(pricesAfterTax);

}