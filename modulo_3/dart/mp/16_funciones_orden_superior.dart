void main() {
  final vuelos = [
    {'id': 'AV123', 'precio': 199.99, 'plazas': 5},
    {'id': 'AV124', 'precio': 249.50, 'plazas': 0},
    {'id': 'AV200', 'precio': 179.0, 'plazas': 12},
  ];

  final ids = vuelos.map((v) => v['id']);
  print('IDs: ${ids.toList()}');

  final totalPlazas = vuelos.map((v) => (v['plazas'] as int)).fold(0, (a, b) => a + b);
  print('Total plazas disponibles: $totalPlazas');
}