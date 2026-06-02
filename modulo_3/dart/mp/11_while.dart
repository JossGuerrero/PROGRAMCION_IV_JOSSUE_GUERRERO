import 'dart:io';

void main() {
  // Embarcar pasajeros hasta llenar el avión
  int plazas = 5;
  int abordados = 0;

  while (abordados < plazas) {
    abordados++;
    print('Abordado pasajero #$abordados');
  }

  // Reintentos de check-in
  int intentos = 0;
  bool checkInOk = false;
  do {
    intentos++;
    print('Intento de check-in #$intentos');
    if (intentos == 2) checkInOk = true; // simular éxito
  } while (!checkInOk && intentos < 3);

  print(checkInOk ? 'Check-in completado' : 'No se pudo completar check-in');
}
