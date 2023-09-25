class Todo {
  final String todo;

  const Todo(this.todo);
}

class Airplane {
  @Todo('to be implemented in future')
  void startEngine() {}

  @Deprecated('will be changed in next release')
  void stopEngine() {}
}

void main() {
  Airplane airplane = Airplane();
  airplane.startEngine();
  airplane.stopEngine();
}
