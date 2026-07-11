void main() {
  Vehicle car = Car("Toyota", "Corolla", 2024, 4);
  Vehicle truck = Truck("Volvo", "FH16", 2023, 18);

  car.displayInfo();
  truck.displayInfo();
}
class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void displayInfo() {
    print("Vehicle: $brand $model $year");
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

  @override
  void displayInfo() {
    print(
        "Car: $brand $model - $year - Doors: $numberOfDoors");
  }
}

class Truck extends Vehicle {
  double loadCapacity;

  Truck(
    String brand,
    String model,
    int year,
    this.loadCapacity,
  ) : super(brand, model, year);

  @override
  void displayInfo() {
    print(
        "Truck: $brand $model - Capacity: $loadCapacity Tons");
  }
}
