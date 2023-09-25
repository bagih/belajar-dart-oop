import "callable_class.dart";

// class Divide adalah callable class
typedef Bagi = Divide;
typedef Pembagian = Divide;

void main() {
  Bagi bagi = Bagi(14, 3);
  Pembagian pembagian = Pembagian(69, 2);
  print(bagi());
  print(pembagian());
}
