abstract class A {
  final int id;

  A(this.id);

  void tellDetails() {
    print('my id is: $id');
  }
}

class B extends A {
  final String name;
  B(super.id, this.name);
}

void main() {
  final bObj = B(123, 'John Doe');
  bObj.tellDetails();
}
