import 'dart:web_gl';
// una clase solo debe tener una única razón para cambiar.
// En otras palabras, debe crear clases con una sola "responsabilidad"
// para que sean más fáciles de mantener y más difíciles de romper.

// class Shapes {
//   List<String> cache = [];

//   // Calculations
//   double squareArea(double l) {
//     return l * l;
//   }

//   double circleArea(double r) {
//     return 3.14159 * r * r;
//   }

//   double triangleArea(double b, double h) {
//     return (b * h) / 2;
//   }

//   // Paint to the screen
//   void paintSquare(Canvas c) {}
//   void paintCircle(Canvas c) {
//     /* ... */
//   }
//   void paintTriangle(Canvas c) {
//     /* ... */
//   }

//   // GET requests
//   String wikiArticle(String figure) {
//     return 'https://en.wikipedia.org/wiki/$figure';
//   }

//   void cacheElements(String text) {
//     cache.add(text);
//   }
// }

abstract class Shape {
  double calcularArea();
}

class Square implements Shape {
  double lado;

  Square(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}

class Circle implements Shape {
  double radio;

  Circle(this.radio);

  @override
  double calcularArea() {
    return 3.14159 * radio * radio;
  }
}

class Rectangle implements Shape {
  double base;
  double altura;

  Rectangle(this.base, this.altura);

  @override
  double calcularArea() {
    return base * altura;
  }
}

// UI painting
class ShapePainter {
  void paintSquare(Canvas c) {
    /* ... */
  }
  void paintCircle(Canvas c) {
    /* ... */
  }
  void paintTriangle(Canvas c) {
    /* ... */
  }
}

// Networking
class ShapesOnline {
  String wikiArticle(String figure) {
    return 'https://en.wikipedia.org/wiki/$figure';
  }

  void cacheElements(String text) {
    // ...
  }
}
