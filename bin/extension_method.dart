class Person {
  String name = 'Bagi Hartawan';
  String address = 'lombok';

  void introduction() {
    print('Halo nama saya $name, saya tinggal di $address');
  }
}

extension ExtensionMethod on Person {
  void sayName() {
    print('Hai $name');
  }
}

void main() {
  Person bagih = Person();
  bagih.introduction();
  bagih.sayName();
}
