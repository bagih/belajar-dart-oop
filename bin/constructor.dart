class Motor {
  late String brand;
  late String fuelType;

  Motor(String brand, String fuelType) {
    this.brand = brand;
    this.fuelType = fuelType;
  }
}

class Car {
  String name;
  String brand;
  String fuelType;

  Car(this.name, this.brand, this.fuelType);
}

class Arco {
  String? brand;
  int? horsePower;
  bool? canFreestyle;

  Arco(this.brand, this.horsePower, this.canFreestyle);

  Arco.withBrand(this.brand);

  Arco.withMinimum(this.brand, this.canFreestyle);

  Arco.withRedirect(String brandName) : this(brandName, null, null);

  @override
  String toString() {
    return 'Brand $brand, horsePower $horsePower, can freestle $canFreestyle';
  }
}

class ConstantConstructor {
  final int value;
  final int quantity;

  const ConstantConstructor(this.value, this.quantity);
}

class Database {
  Database() {
    print('Database instanciated');
  }

  static Database database = Database();

  factory Database.get() {
    return database;
  }
}

void main() {
  Motor supraBapak = Motor('Honda', 'Pertamax');
  print(
      'Ini adalah motor ${supraBapak.brand} dengan bahan bakar tipe ${supraBapak.fuelType}');

  Car l300 = Car('l300', 'Toyota', 'Solar');
  print(
      'Ini adalah mobil ${l300.name} dari merek ${l300.brand} dengan bahan bakar ${l300.fuelType}');

  Arco arco1 = Arco('Toyota', 120, true);
  Arco arco2 = Arco.withBrand('Samsung');
  Arco arco3 = Arco.withRedirect('Mito');

  print(arco1);
  print(arco2);
  print(arco3);

  // constant constructor
  ConstantConstructor cons1 = const ConstantConstructor(32, 11);
  ConstantConstructor cons2 = const ConstantConstructor(14, 12);
  ConstantConstructor cons3 = const ConstantConstructor(32, 11);
  print('cons1 = cons2 is ${cons1 == cons2}');
  print('cons1 = cons3 is ${cons1 == cons3}');

  // factory constructor

  Database database1 = Database.get();
  Database database2 = Database.get();
  print('database1 = database2 is ${database1 == database2}');
}
