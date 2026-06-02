class Reserva {
  final String pasajero;
  final String vueloId;
  int _asientos; // privado

  Reserva(this.pasajero, this.vueloId, int asientos) : _asientos = asientos;

  int get asientos => _asientos;

  void agregarAsiento() {
    _asientos++;
    print('Asiento agregado. Total: $_asientos');
  }

  void cancelarAsiento() {
    if (_asientos <= 0) throw StateError('No hay asientos para cancelar');
    _asientos--;
    print('Asiento cancelado. Total: $_asientos');
  }
}

void main() {
  final r = Reserva('Ana', 'AV123', 1);
  r.agregarAsiento();
  r.cancelarAsiento();
  print('Asientos restantes: ${r.asientos}');
}