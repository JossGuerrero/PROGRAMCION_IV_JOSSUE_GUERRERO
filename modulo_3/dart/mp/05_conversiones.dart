void main() {
  // Conversión de entradas de usuario en sistema de reservas
  String asientoStr = '12A';
  // Extraer número (ejemplo sencillo)
  final numStr = asientoStr.replaceAll(RegExp(r'[^0-9]'), '');
  int asiento = int.tryParse(numStr) ?? 0;
  print('Asiento #$asiento');

  // Precio en texto a double
  String precioTexto = '249.50';
  double precio = double.tryParse(precioTexto) ?? 0.0;
  print('Precio: \$' + precio.toStringAsFixed(2));

  // Validación de tipo
  Object valor = 180;
  if (valor is int) print('Capacidad: $valor');
}