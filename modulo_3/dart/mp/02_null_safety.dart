void main() {
  String vuelo = 'AV123';

  String? puerta;
  print('Puerta: ${puerta ?? 'Pendiente'}');

  puerta = 'A12';
  print('Puerta asignada: ${puerta.length} caracteres');

  late DateTime horaSalida;
  horaSalida = DateTime.parse('2026-06-01T14:30:00');
  print('Salida: $horaSalida');

  String? destino;
  print('Destino en mayúsculas: ${destino?.toUpperCase() ?? 'SIN DESTINO'}');
}