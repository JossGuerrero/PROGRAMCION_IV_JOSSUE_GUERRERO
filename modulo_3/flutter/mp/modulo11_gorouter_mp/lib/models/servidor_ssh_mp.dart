class BusSSH {
  final String id;
  final String nombre;
  final String ruta;
  final int capacidad;
  final bool clima;

  const BusSSH({
    required this.id,
    required this.nombre,
    required this.ruta,
    required this.capacidad,
    required this.clima,
  });
}

// Lista simulada — en una app real vendría de un provider
const busesSimulados = [
  BusSSH(id: '1', nombre: 'AV204',  ruta: 'UIO ➔ GYE', capacidad: 180, clima: true),
  BusSSH(id: '2', nombre: 'LA1456', ruta: 'UIO ➔ MIA', capacidad: 160, clima: true),
  BusSSH(id: '3', nombre: 'EQ350',  ruta: 'GYE ➔ MAD', capacidad: 250, clima: false),
];
