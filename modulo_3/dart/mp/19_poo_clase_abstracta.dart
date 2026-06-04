abstract class Aeronave {
  String get id;
  void despegar();
  void aterrizar();
}

class AvionPasajeros extends Aeronave {
  final String id;
  final int capacidad;
  AvionPasajeros(this.id, this.capacidad);

  @override
  void despegar() => print('Avión $id despegando con capacidad $capacidad');

  @override
  void aterrizar() => print('Avión $id aterrizando');
}

class AvionCarga extends Aeronave {
  final String id;
  final double tonnage;
  AvionCarga(this.id, this.tonnage);

  @override
  void despegar() => print('Carga $id despegando con $tonnage toneladas');

  @override
  void aterrizar() => print('Carga $id aterrizando');
}

void main() {
  final flota = <Aeronave>[AvionPasajeros('HK-4567', 180), AvionCarga('CG-001', 12.5)];
  for (final a in flota) {
    a.despegar();
    a.aterrizar();
  }
}