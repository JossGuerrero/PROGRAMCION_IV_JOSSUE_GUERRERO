void main() {
  // Estado del vuelo usando switch clásico
  String estado = 'DELAYED';

  switch (estado) {
    case 'ON_TIME':
      print('Vuelo a tiempo');
      break;
    case 'DELAYED':
      print('Vuelo retrasado');
      break;
    case 'CANCELLED':
      print('Vuelo cancelado');
      break;
    default:
      print('Estado desconocido');
  }

  // Expresión switch (Dart 3) para descripción
  String descripcion = switch (estado) {
    'ON_TIME' => 'Salida según lo programado',
    'DELAYED' => 'Retraso — revisar notificaciones',
    'CANCELLED' => 'Operación cancelada',
    _ => 'Estado no identificado',
  };
  print(descripcion);
}