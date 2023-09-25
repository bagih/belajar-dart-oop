abstract class Car {
  abstract String name;
  abstract String engine;

  void startEngine();
}

abstract class hasTire {
  abstract int tires;
}

class Rubicon implements Car, hasTire {
  @override
  String engine;

  @override
  String name;

  @override
  int tires;

  Rubicon(this.engine, this.name, this.tires);

  @override
  void startEngine() {
    print('$engine has started');
  }

  @override
  String toString() {
    return 'namanya $name, mesinnya $engine, punya ban sebanyak $tires';
  }
}

void main() {
  Rubicon rubicon = Rubicon('spiderMonkey', 'rubicon pejabat', 6);
  print(rubicon);
}
