import 'dart:io';

void main(){
  print('Reserva de vuelo — ingrese nombre del pasajero:');
  String? nombre = stdin.readLineSync();

  print('Ingrese vuelo (ej: AV123):');
  String? vuelo = stdin.readLineSync();

  print('Ingrese número de asientos a reservar:');
  int plazas = int.tryParse(stdin.readLineSync() ?? '') ?? 1;

  print('Reserva: $nombre → Vuelo: $vuelo | Plazas: $plazas');
}



