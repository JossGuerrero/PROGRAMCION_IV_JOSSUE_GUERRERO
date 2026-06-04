import 'dart:io';

void main() {
  int plazas = 5;
  int abordados = 0;

  while (abordados < plazas) {
    abordados++;
    print('Abordado pasajero #$abordados');
  }

  int intentos = 0;
  bool checkInOk = false;
  do {
    intentos++;
    print('Intento de check-in #$intentos');
    if (intentos == 2) checkInOk = true;
  } while (!checkInOk && intentos < 3);

  print(checkInOk ? 'Check-in completado' : 'No se pudo completar check-in');
}
