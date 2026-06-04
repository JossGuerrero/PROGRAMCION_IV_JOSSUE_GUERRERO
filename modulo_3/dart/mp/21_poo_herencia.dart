class Persona {
  final String nombre;
  Persona(this.nombre);

  void presentarse() => print('Hola, soy $nombre');
}

class Pasajero extends Persona {
  final String ticket;
  Pasajero(String nombre, this.ticket) : super(nombre);

  void abordar() => print('$nombre aborda con ticket $ticket');
}

class Tripulante extends Persona {
  final String rol;
  Tripulante(String nombre, this.rol) : super(nombre);

  void trabajar() => print('$nombre realiza tareas de $rol');
}

void main() {
  final p = Pasajero('Ana', 'TCK-001');
  final t = Tripulante('Carlos', 'Piloto');
  p.presentarse();
  p.abordar();
  t.trabajar();
}