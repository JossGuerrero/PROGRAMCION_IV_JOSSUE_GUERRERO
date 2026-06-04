void main() {
  int demoraMin = 45;

  if (demoraMin == 0) {
    print('Vuelo a tiempo');
  } else if (demoraMin < 60) {
    print('Retraso corto');
  } else {
    print('Retraso largo — verificar reprogramación');
  }

  bool embarcando = false;
  String estado = embarcando ? 'Embarcando' : 'No embarcando';
  print(estado);

  String? puerta;
  print('Puerta: ${puerta ?? 'Asignar puerta'}');
}

