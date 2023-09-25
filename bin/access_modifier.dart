class Person {
  String? _name;
  String? _address;
  int? age;

  Person(String name, String address, this.age) {
    _name = name;
    _address = address;
  }

  String? get name => _name;

  String? get address => _address;
}
