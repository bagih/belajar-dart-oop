class Apple {
  int quantity = 10;

  Apple operator +(Apple apple) {
    Apple newApple = Apple();
    newApple.quantity = quantity + apple.quantity;
    return newApple;
  }
}

void main() {
  Apple apple = Apple();
  Apple apple2 = Apple();
  Apple apple3 = apple + apple2;
  print('Hasil apple1 + apple2 = ${apple3.quantity}');
}
