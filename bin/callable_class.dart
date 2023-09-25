class Divide {
  int num1;
  int num2;

  Divide(this.num1, this.num2);

  double call() => num1 / num2;
}

void main() {
  Divide divide = Divide(12, 2);
  print(divide());
}
