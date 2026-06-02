void main() {
  // Variables típicas en un sistema de vuelos
  var vueloId = 'AV123';         // String — identificador de vuelo
  var plazas  = 180;             // int — capacidad
  var precio  = 199.99;          // double — tarifa base
  var enHora  = true;            // bool — estado de puntualidad

  // Tipos explícitos
  String origen      = 'Bogotá';
  String destino     = 'Medellín';
  int    escalas     = 0;
  bool   disponibilidad = false;

  // final — valor asignado una vez (por ejemplo, número de avión)
  final matricula = 'HK-4567';

  // const — valores constantes de configuración
  const impuesto = 0.12; // 12%

  // Uso e impresión
  final tarifaTotal = precio * (1 + impuesto);
  print('Vuelo: $vueloId ($matricula) — $origen → $destino');
  print('Plazas: $plazas, Escalas: $escalas, Puntual: $enHora');
  print('Tarifa final: \$${tarifaTotal.toStringAsFixed(2)}');
}