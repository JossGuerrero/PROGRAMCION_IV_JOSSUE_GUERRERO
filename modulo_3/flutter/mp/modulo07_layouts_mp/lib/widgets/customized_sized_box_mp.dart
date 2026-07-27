import 'package:flutter/material.dart';

// CustomizedSizedBox — Selección de asientos: espaciado, sangría,
// alineación y etiquetas de características del asiento.
class CustomizedSizedBox extends StatelessWidget {

  const CustomizedSizedBox({
    super.key,
    required this.height,
    required this.width, required MainAxisAlignment mainAxisAlignment, required List<Widget> children,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // SizedBox — espaciado fijo
          const Text('SizedBox', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Asiento 12A reservado'),
          const SizedBox(height: 32),          // ← espacio fijo de 32px
          const Text('Asiento 12B disponible (después de 32px)'),

          const Divider(height: 32),

          // Padding — espacio alrededor de un hijo
          const Text('Padding', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Container(
            color: Colors.indigo.shade50,
            child: const Padding(
              padding: EdgeInsets.only(left: 24),    // ← sangría izquierda
              child:   Text('Equipaje de mano: 1 pieza'),
            ),
          ),

          const Divider(height: 32),

          // Align — posicionar dentro del espacio disponible
          const Text('Align', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerRight,        // ← borde derecho
            child: Icon(Icons.event_seat, color: Colors.indigo),
          ),

          const Divider(height: 32),

          // Wrap — flujo automático de elementos
          const Text('Wrap', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Wrap(
            spacing:    8,
            runSpacing: 8,
            children: ['Ventana', 'Pasillo', 'Extra espacio', 'Salida de emergencia', 'Wifi a bordo', 'Comida incluida', 'Reclinable']
                .map((t) => Chip(label: Text(t)))
                .toList(),
          ),
        ],
      );
  }
}
