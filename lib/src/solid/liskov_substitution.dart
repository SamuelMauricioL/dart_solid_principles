// El LSP establece que las subclases deben reemplazarse con
// superclases sin cambiar la corrección lógica del programa

abstract class Figura {
  double calcularArea();
}

class Rectangulo implements Figura {
  double base;
  double altura;

  Rectangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return base * altura;
  }
}

class Circulo implements Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return 3.14159 * radio * radio;
  }
}

void main() {
  List<Figura> figuras = [Rectangulo(10, 5), Circulo(5)];

  for (var figura in figuras) {
    print('Área de la figura: ${figura.calcularArea()}');
  }
}
