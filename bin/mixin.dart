mixin Plantable {
  bool plantable = true;

  void sayPlantableStatus() {
    print('this is plantable = $plantable');
  }
}

mixin Harvestable {
  bool harvestable = true;

  void sayHarvestableStatus() {
    print('this is harvestable = $harvestable');
  }
}

abstract class Vehicle {
  abstract int tires;
}

mixin HasEngine on Vehicle {
  String engine = 'Tractor V8 super turbo';

  void sayEngine() {
    print('hi this vehicle has $engine engine');
  }
}

class Pajero extends Vehicle with HasEngine {
  @override
  int tires = 18;
}

class Durian with Plantable, Harvestable {}

void main() {
  Durian durian = Durian();
  durian.sayPlantableStatus();
  durian.sayHarvestableStatus();

  // mixin with limited implement
  Pajero pajero = Pajero();
  pajero.sayEngine();
}
