void main() {
  // Lista de vuelos (identificadores)
  List<String> vuelos = ['AV123', 'AV124', 'AV200'];

  // Map: vuelo -> plazas disponibles
  Map<String, int> plazas = {
    'AV123': 5,
    'AV124': 0,
    'AV200': 12,
  };

  print('Primer vuelo: ${vuelos[0]}');
  print('Plazas AV124: ${plazas['AV124']}');

  // Set de aeropuertos visitados (sin duplicados)
  Set<String> aeropuertos = {'BOG', 'MDE', 'CTG'};
  aeropuertos.add('MDE'); // no añade duplicado

  // Combinar listas con spread
  var otrosVuelos = ['AV300', 'AV301'];
  var todos = [...vuelos, ...otrosVuelos];
  print(todos);

  // Collection if — incluir solo vuelos con plazas
  var conPlazas = [for (var v in todos) if ((plazas[v] ?? 0) > 0) v];
  print('Vuelos con plazas: $conPlazas');
}