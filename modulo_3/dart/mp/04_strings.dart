void main() {
  final vuelo = 'AV123';
  final origen = 'BOG';
  final destino = 'MDE';

  print('Vuelo $vuelo: $origen → $destino');
  print('Resumen: ${vuelo.toUpperCase()} desde ${origen}');

  final tarjeta = '''\nTarjeta de embarque\nVuelo: $vuelo\nOrigen: $origen\nDestino: $destino\n''';
  print(tarjeta);

  final ejemplo = r'Código aeropuerto: BOG/ MDE';
  print(ejemplo);

  print('   $vuelo   '.trim());
  print('av123'.toUpperCase());
}