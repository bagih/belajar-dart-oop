abstract class Vehicle {
  String brand;
  String engine;

  Vehicle(this.brand, this.engine);

  void engineStart();
}

class Car extends Vehicle {
  String name;
  Car(this.name, String brand, String engine) : super(brand, engine);

  @override
  String toString() {
    return 'name $name, brand $brand, engine $engine';
  }

  @override
  void engineStart() {
    print('$engine is started');
  }
}

void main() {
  Car car = Car('corolla', 'mitsubishi', 'v8');
  print(car);
  car.engineStart();
}
