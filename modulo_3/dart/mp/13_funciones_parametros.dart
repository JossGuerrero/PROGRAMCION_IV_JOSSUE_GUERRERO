// Crear un vuelo con parámetros nombrados
void crearVuelo({
  required String vueloId,
  required String origen,
  required String destino,
  int capacidad = 180,
  bool internacional = false,
}) {
  print('Creando vuelo $vueloId: $origen → $destino | Capacidad: $capacidad | Internacional: $internacional');
}

void main() {
  crearVuelo(vueloId: 'AV123', origen: 'BOG', destino: 'MDE', capacidad: 150);
  crearVuelo(vueloId: 'AV200', origen: 'BOG', destino: 'LAX', internacional: true);
}