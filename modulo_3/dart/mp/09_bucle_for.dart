void main() {
  // Imprimir lista de vuelos programados
  List<String> vuelos = ['AV123', 'AV124', 'AV200'];
  for (int i = 0; i < vuelos.length; i++) {
    print('Vuelo #${i + 1}: ${vuelos[i]}');
  }

  // Progreso de embarque por grupos
  for (int g = 1; g <= 4; g++) {
    print('Grupo de embarque: $g');
  }
}