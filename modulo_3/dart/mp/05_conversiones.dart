void main() {
  String asientoStr = '12A';
  final numStr = asientoStr.replaceAll(RegExp(r'[^0-9]'), '');
  int asiento = int.tryParse(numStr) ?? 0;
  print('Asiento #$asiento');

  String precioTexto = '249.50';
  double precio = double.tryParse(precioTexto) ?? 0.0;
  print('Precio: \$' + precio.toStringAsFixed(2));

  Object valor = 180;
  if (valor is int) print('Capacidad: $valor');
}