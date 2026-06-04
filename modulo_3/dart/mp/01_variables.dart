void main() {
  var vueloId = 'AV123';
  var plazas  = 180;
  var precio  = 199.99;
  var enHora  = true;

  String origen      = 'Bogotá';
  String destino     = 'Medellín';
  int    escalas     = 0;
  bool   disponibilidad = false;

  final matricula = 'HK-4567';

  const impuesto = 0.12;

  final tarifaTotal = precio * (1 + impuesto);
  print('Vuelo: $vueloId ($matricula) — $origen → $destino');
  print('Plazas: $plazas, Escalas: $escalas, Puntual: $enHora');
  print('Tarifa final: \$${tarifaTotal.toStringAsFixed(2)}');
}