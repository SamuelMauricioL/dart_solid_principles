// Este principio establece que los clientes no tienen que implementar un
// comportamiento que no necesitan. La esencia de este principio es:
// debe crear interfaces pequeñas con métodos mínimos.

abstract class InformacionPersonal {
  final String nombre;
  final String apellido;
  final String email;
  InformacionPersonal(this.nombre, this.apellido, this.email);

  void guardarInformacionPersonal();
}

abstract class Nomina {
  double salario;
  String tipoContrato;

  Nomina(this.salario, this.tipoContrato);

  void calcularNomina();
}

class Empleado implements InformacionPersonal, Nomina {
  @override
  String nombre;

  @override
  String apellido;

  @override
  String email;

  @override
  double salario;

  @override
  String tipoContrato;

  Empleado(
    this.nombre,
    this.apellido,
    this.email,
    this.salario,
    this.tipoContrato,
  );

  @override
  void calcularNomina() {
    // Lógica para calcular la nómina del empleado
  }

  @override
  void guardarInformacionPersonal() {
    // Lógica para guardar la información personal en una base de datos
  }
}
