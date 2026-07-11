void main() {
  Car car = Car("Toyota", "Corolla", 2024, 4);

  car.displayInfo();
  print("Doors: ${car.numberOfDoors}");
}
class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(
    String brand,
    String model,
    int year,
    this.numberOfDoors,
  ) : super(brand, model, year);
}