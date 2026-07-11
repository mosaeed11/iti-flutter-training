void main() {
  List<Transport> transports = [
    Car(),
    Bicycle(),
    Airplane(),
  ];

  for (var transport in transports) {
    transport.move();
  }
}
abstract class Transport {
  void move();
}

class Car extends Transport {
  @override
  void move() {
    print("Car moves on roads.");
  }
}

class Bicycle extends Transport {
  @override
  void move() {
    print("Bicycle moves on roads.");
  }
}

class Airplane extends Transport {
  @override
  void move() {
    print("Airplane flies in the sky.");
  }
}
