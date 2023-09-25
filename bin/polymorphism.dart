class Fruit {
  String name;
  String species;

  Fruit(this.name, this.species);

  @override
  String toString() {
    return '$name from species $species';
  }
}

class Orange extends Fruit {
  Orange(String name, String species) : super(name, species);
}

class Apple extends Fruit {
  Apple(String name, String species) : super(name, species);
}

void sayFruit(Fruit fruit) {
  print('hello ${fruit.name} from species ${fruit.species}');
}

void main() {
  Fruit fruit = Fruit('Duren', 'durianimus');
  print(fruit);

  fruit = Orange('Jeruk', 'orangenimus');
  print(fruit);

  fruit = Apple('Apple', 'applenimus');
  print(fruit);

  sayFruit(Apple('Apple merah', 'applenimus merahnimus'));
}
