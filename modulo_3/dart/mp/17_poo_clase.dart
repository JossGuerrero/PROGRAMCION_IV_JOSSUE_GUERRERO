class Vuelo {
  final String id;
  final String origen;
  final String destino;
  int plazasDisponibles;

  Vuelo({
    required this.id,
    required this.origen,
    required this.destino,
    required this.plazasDisponibles,
  });

  bool get lleno => plazasDisponibles <= 0;

  void abordarPasajero() {
    if (plazasDisponibles > 0) plazasDisponibles--;
  }

  String resumen() => 'Vuelo $id: $origen → $destino | Plazas: $plazasDisponibles';

  @override
  String toString() => resumen();
}

void main() {
  final v = Vuelo(id: 'AV123', origen: 'BOG', destino: 'MDE', plazasDisponibles: 5);
  print(v);
  v.abordarPasajero();
  print('Después de abordar: ${v.plazasDisponibles} plazas');
}