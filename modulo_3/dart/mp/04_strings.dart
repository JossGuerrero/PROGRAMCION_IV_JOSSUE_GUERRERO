void main() {
  final vuelo = 'AV123';
  final origen = 'BOG';
  final destino = 'MDE';

  // Interpolación y expresiones
  print('Vuelo $vuelo: $origen → $destino');
  print('Resumen: ${vuelo.toUpperCase()} desde ${origen}');

  // Multilínea: tarjeta de embarque simple
  final tarjeta = '''\nTarjeta de embarque\nVuelo: $vuelo\nOrigen: $origen\nDestino: $destino\n''';
  print(tarjeta);

  // Raw string para rutas o formatos literales
  final ejemplo = r'Código aeropuerto: BOG/ MDE';
  print(ejemplo);

  // Métodos de String útiles
  print('   $vuelo   '.trim());
  print('av123'.toUpperCase());
}