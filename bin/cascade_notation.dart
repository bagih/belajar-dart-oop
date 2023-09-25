class Person {
  String name = '';
  String address = '';
  int age = 0;

  @override
  String toString() {
    return 'name is $name with address $address and age of $age';
  }
}

void main() {
  Person jembo = Person()
    ..name = 'jembo'
    ..address = 'jabon'
    ..age = 69;
  print(jembo);
}
