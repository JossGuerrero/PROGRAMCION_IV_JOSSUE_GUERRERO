void main() {
  // Lambdas para calcular duración estimada y filtrar vuelos
  final duracionEstimada = (int horas, int minutos) => horas * 60 + minutos;
  print('Duración en minutos: ${duracionEstimada(1, 45)}');

  final precios = [199.99, 249.50, 179.0];
  precios.sort((a, b) => a.compareTo(b)); // ascendente
  print('Precios ordenados: $precios');
}