// El principio abierto-cerrado establece que en una buena arquitectura
// el desarrollador debe agregar nuevos comportamientos
// sin cambiar el código fuente existente.
// Este concepto se describe notoriamente como
// "las clases deben estar abiertas para la extensión
// y cerradas para los cambios"

// class Rectangle {
//   final double width;
//   final double height;
//   const Rectangle(this.width, this.height);
// }

// class Circle {
//   final double radius;
//   const Circle(this.radius);

//   double get pi => 3.1415;
// }

// class Square {
//   final double lado;
//   Square(this.lado);
// }

// class Triangle {
//   final double base;
//   final double height;
//   Triangle(this.base, this.height);
// }

// class AreaCalculator {
//   double calculate(Object shape) {
//     if (shape is Rectangle) {
//       return shape.width * shape.height;
//     } else if (shape is Square) {
//       return shape.lado * shape.lado;
//     } else if (shape is Triangle) {
//       return shape.base * shape.height / 2;
//     } else {
//       final c = shape as Circle;
//       return c.radius * c.radius * c.pi;
//     }
//   }
// }

// abstract class Area {
//   const Area();

//   double calcularArea();
// }

// class Rectangle implements Area {
//   final double width;
//   final double height;
//   const Rectangle(this.width, this.height);

//   @override
//   double calcularArea() => width * height;
// }

// class Circle implements Area {
//   final double radius;
//   const Circle(this.radius);

//   @override
//   double calcularArea() => radius * radius * 3.1415;
// }

// class Square implements Area {
//   final double lado;
//   const Square(this.lado);

//   @override
//   double calcularArea() => lado * lado;
// }

// class AreaCalculator {
//   double calculate(Area shape) => shape.calcularArea();
// }

abstract class TipoContrato {
  double calcularSalario();
}

class ContratoFijo implements TipoContrato {
  @override
  double calcularSalario() {
    // Lógica para calcular el salario para un contrato fijo
    return 3000.0;
  }
}

class ContratoTemporal implements TipoContrato {
  @override
  double calcularSalario() {
    // Lógica para calcular el salario para un contrato temporal
    return 4000.0;
  }
}

class ContratoLocacionPS implements TipoContrato {
  @override
  double calcularSalario() {
    // Lógica para calcular el salario para un contrato temporal
    return 10000.0;
  }
}

class Empleado {
  final String nombre;
  final String apellido;
  final TipoContrato tipoContrato;

  Empleado(this.nombre, this.apellido, this.tipoContrato);

  double calcularSalario() {
    return tipoContrato.calcularSalario();
  }
}

void main() {
  final empleado = Empleado('Juan', 'Perez', ContratoLocacionPS());
  print(empleado.calcularSalario());
}
