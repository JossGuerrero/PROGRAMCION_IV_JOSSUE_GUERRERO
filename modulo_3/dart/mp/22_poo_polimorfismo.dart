
abstract class MetodoPago {
  void procesar(double monto);
}

class Tarjeta implements MetodoPago {
  final String numero;
  Tarjeta(this.numero);
  @override
  void procesar(double monto) => print('Procesando \${monto.toStringAsFixed(2)} con tarjeta $numero');
}

class Efectivo implements MetodoPago {
  @override
  void procesar(double monto) => print('Recibido efectivo: \${monto.toStringAsFixed(2)}');
}

void cobrar(MetodoPago metodo, double monto) {
  metodo.procesar(monto);
}

void main() {
  final mp1 = Tarjeta('4242-****-****-4242');
  final mp2 = Efectivo();
  cobrar(mp1, 199.99);
  cobrar(mp2, 50.0);
}
