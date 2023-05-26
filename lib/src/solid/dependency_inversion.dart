// El DIP establece que debemos favorecer las abstracciones
// sobre las implementaciones. Extender una clase abstracta
// o implementar una interfaz es bueno, pero descender de una
// clase concreta es malo.

abstract class BaseDeDatos {
  void actualizar(int id, String informacion);
  void guardar(String informacion);
  void eliminar(int id);
  String obtenerInformacion(int id);
}

abstract class BaseDeDatosNoSql extends BaseDeDatos {}

abstract class BaseDeDatosSql extends BaseDeDatos {
  void join(String table1, table2);
}

class BaseDeDatosSQL implements BaseDeDatosSql {
  @override
  void actualizar(int id, String informacion) {
    // mySQL.updateById(id, informacion);
  }

  @override
  void eliminar(int id) {
    // TODO: implement eliminar
  }

  @override
  void guardar(String informacion) {
    // TODO: implement guardar
  }

  @override
  String obtenerInformacion(int id) {
    // TODO: implement obtenerInformacion
    throw UnimplementedError();
  }

  @override
  void join(String table1, table2) {
    // TODO: implement join
  }
}

class BaseDeDatosRedis implements BaseDeDatosNoSql {
  @override
  void actualizar(int id, String informacion) {
    // mySQL.updateById(id, informacion);
  }

  @override
  void eliminar(int id) {
    // TODO: implement eliminar
  }

  @override
  void guardar(String informacion) {
    // TODO: implement guardar
  }

  @override
  String obtenerInformacion(int id) {
    // TODO: implement obtenerInformacion
    throw UnimplementedError();
  }
}

class BaseDeDatosMongoDB implements BaseDeDatosNoSql {
  @override
  void actualizar(int id, String informacion) {
    // mongodb.update(id).set(informacion);
  }

  @override
  void eliminar(int id) {
    // TODO: implement eliminar
  }

  @override
  void guardar(String informacion) {
    // TODO: implement guardar
  }

  @override
  String obtenerInformacion(int id) {
    // TODO: implement obtenerInformacion
    throw UnimplementedError();
  }
}

// ---------------- otro ejm

abstract class EncryptionAlgorithm {
  const EncryptionAlgorithm();

  String encrypt(); // <-- abstraction
}

class AlgoAES implements EncryptionAlgorithm {
  const AlgoAES();

  @override
  String encrypt() {
    return '';
  }
}

class AlgoRSA implements EncryptionAlgorithm {
  const AlgoRSA();

  @override
  String encrypt() {
    return '';
  }
}

class AlgoSHA implements EncryptionAlgorithm {
  const AlgoSHA();

  @override
  String encrypt() {
    return '';
  }
}

class FileManager {
  void secureFile(EncryptionAlgorithm algo) => algo.encrypt();
}
