class Avion {
  final String matricula;
  final int capacidad;

  Avion({required this.matricula, required this.capacidad});

  // Constructor nombrado para modelos pequeños
  Avion.pequeno() : matricula = 'SM-100', capacidad = 50;

  // Factory para crear desde mapa de datos
  factory Avion.fromMap(Map<String, dynamic> m) {
    return Avion(matricula: m['matricula'], capacidad: m['capacidad']);
  }

  @override
  String toString() => 'Avión $matricula (capacidad: $capacidad)';
}

void main() {
  final a1 = Avion(matricula: 'HK-4567', capacidad: 180);
  final a2 = Avion.pequeno();
  final a3 = Avion.fromMap({'matricula': 'ZZ-999', 'capacidad': 220});

  print(a1);
  print(a2);
  print(a3);
}