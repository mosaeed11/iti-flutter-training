void main() {
  Car car = Car();

  car.enableGPS();

  car.service();
}
abstract class Serviceable {
  void service();
}

mixin GPSReady {
  void enableGPS() {
    print("GPS Enabled");
  }
}

class Vehicle {}

class Car extends Vehicle with GPSReady implements Serviceable {
  @override
  void service() {
    print("Car Serviced");
  }
}
