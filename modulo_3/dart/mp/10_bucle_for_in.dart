void main() {
  final pasajeros = ['Ana', 'Luis', 'María'];

  // for-in para recorrer pasajeros
  for (final p in pasajeros) {
    print('Pasajero: $p');
  }

  // Map: vuelo → plazas disponibles
  final plazas = {'AV123': 5, 'AV124': 0};
  for (final entrada in plazas.entries) {
    print('${entrada.key} → plazas: ${entrada.value}');
  }
}