abstract class A {
  final int id;

  A(this.id);

  void tellDetails() {
    print('my id is: $id');
  }
}

class B implements A {
  @override
  final int id;

  final String name;

  B(this.id, this.name);

  @override
  void tellDetails() {
    print('Id details from B: $id ');
  }
}

void main() {
  var bObj = B(123, 'John Doe');
  bObj.tellDetails();
}
