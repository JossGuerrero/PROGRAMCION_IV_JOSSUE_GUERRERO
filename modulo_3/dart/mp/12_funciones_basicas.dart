double calcularTarifaBase(double distanciaKm, double tarifaPorKm) {
  return distanciaKm * tarifaPorKm;
}

double aplicarImpuestos(double tarifa, double impuestoPct) => tarifa * (1 + impuestoPct);

void imprimirResumenVuelo(String vuelo, String origen, String destino, double precio) {
  print('Vuelo $vuelo: $origen → $destino — Precio: \$' + precio.toStringAsFixed(2));
}

void main() {
  final base = calcularTarifaBase(500.0, 0.35);
  final total = aplicarImpuestos(base, 0.12);
  imprimirResumenVuelo('AV123', 'BOG', 'MDE', total);
}