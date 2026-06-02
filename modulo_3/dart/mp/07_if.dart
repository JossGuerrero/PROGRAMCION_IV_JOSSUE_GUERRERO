void main() {
  // Decisiones en un sistema de vuelos
  int demoraMin = 45; // minutos de demora

  if (demoraMin == 0) {
    print('Vuelo a tiempo');
  } else if (demoraMin < 60) {
    print('Retraso corto');
  } else {
    print('Retraso largo — verificar reprogramación');
  }

  // Ternario para estado de embarque
  bool embarcando = false;
  String estado = embarcando ? 'Embarcando' : 'No embarcando';
  print(estado);

  // Null-aware para puerta
  String? puerta;
  print('Puerta: ${puerta ?? 'Asignar puerta'}');
}

