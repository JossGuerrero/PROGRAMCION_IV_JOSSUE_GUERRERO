import 'package:flutter/material.dart';

// FilaEstado — Fila de la lista de pasajeros (nombre, asiento, si ya abordó)
class FilaEstado extends StatelessWidget {
  final String nombre;   // Nombre del pasajero
  final String detalle;  // Asiento y clase, ej. '14C · Clase Turista'
  final bool   activo;   // true = ya abordó
  final bool message;

  const FilaEstado({
    super.key,
    required this.nombre,
    required this.detalle,
    required this.activo,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          // Ícono de estado de abordaje
          Icon(
            activo ? Icons.airplanemode_active : Icons.schedule,

            color: activo ? Colors.green : Colors.red,
            size:  20,
          ),
          const SizedBox(width: 12),

          // Expanded — el Column ocupa todo el espacio restante
          // Sin Expanded, un nombre largo desbordaría la Row
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize:       MainAxisSize.min,
              children: [
                Text(nombre),
                Text(detalle,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
              ],
            ),
          ),

          const SizedBox(width: 8),
          const Spacer(),
          // Chip de estado — queda pegado al borde derecho gracias a Expanded
          Container(
            padding:    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color:        (activo ? Colors.green : Colors.red).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              activo ? 'Abordo' : 'Pendiente',
              style: TextStyle(
                fontSize:   11,
                color:      activo ? Colors.green.shade700 : Colors.red.shade700,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}