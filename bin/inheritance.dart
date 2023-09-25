class Fruit {
  String name = 'fruit1';
  String species = 'species1';
  bool isSweet = true;

  // Fruit(this.name, this.species, this.isSweet);

  String sayFruit() {
    return 'hi from fruit class';
  }

  String helloFruit() {
    return 'hello this is $name fruit';
  }

  @override
  String toString() {
    return '$name , $species, $isSweet';
  }
}

class Apple extends Fruit {
  // Apple(super.name, super.species, super.isSweet);
}

class Orange extends Fruit {
  @override
  String sayFruit() {
    return 'hi from orange class';
  }
}

class Durian extends Fruit {
  @override
  String name = 'Durian';
}

class Vehicle {
  String name;
  String engine;
  String brand;

  Vehicle(this.name, this.engine, this.brand);

  @override
  String toString() {
    return '$name, $engine, $brand';
  }
}

class Car extends Vehicle {
  Car(String name, String engine, String brand) : super(name, engine, brand);
}

void main() {
  Apple apple = Apple();
  print(apple);
  apple
    ..name = 'apple'
    ..species = 'apppleimus'
    ..isSweet = true;
  print(apple);

  // overriding
  Orange orange = Orange();
  print(orange.sayFruit());

  // field overriding
  Durian durian = Durian();
  print(durian.helloFruit());

  // super constructor
  Car car = Car('corolla', 'mesin traktor', 'samsung');
  print(car);
}
