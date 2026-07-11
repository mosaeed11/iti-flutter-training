void main() {
  Vehicle car = Vehicle("BMW", "M5", 2022);

  car.displayInfo();

  car.year = 2025;
  print(car.year);

  car.year = 1800;
}
class Vehicle {
  String _brand;
  String _model;
  int _year;

  Vehicle(this._brand, this._model, this._year);

  // Getter
  String get brand => _brand;
  String get model => _model;
  int get year => _year;

  // Setter
  set year(int value) {
    if (value >= 1900) {
      _year = value;
    } else {
      print("Invalid Year");
    }
  }

  void displayInfo() {
    print("Brand: $_brand");
    print("Model: $_model");
    print("Year: $_year");
  }
}
