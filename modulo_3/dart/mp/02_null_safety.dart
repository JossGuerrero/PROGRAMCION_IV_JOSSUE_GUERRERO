void main() {
  // Ejemplo: datos opcionales de un vuelo
  String vuelo = 'AV123';

  // Puerta puede ser null si aún no se asignó
  String? puerta;
  print('Puerta: ${puerta ?? 'Pendiente'}');

  // Gate asignada más tarde
  puerta = 'A12';
  print('Puerta asignada: ${puerta.length} caracteres');

  // Hora programada puede inicializarse tarde
  late DateTime horaSalida;
  horaSalida = DateTime.parse('2026-06-01T14:30:00');
  print('Salida: $horaSalida');

  // Uso de operador ?.
  String? destino;
  print('Destino en mayúsculas: ${destino?.toUpperCase() ?? 'SIN DESTINO'}');
}