import 'package:flutter/material.dart';

// TarjetaLog — Estado de vuelo (ej. UIO ➔ GYE)
class TarjetaLog extends StatelessWidget {
  final String   nivel;        // A TIEMPO, EMBARCANDO, DEMORADO, CANCELADO
  final String   componente;   // Número de vuelo, ej. 'AV204'
  final String   mensaje;      // Detalle del estado (ruta, puerta, hora estimada)
  final DateTime timestamp;    // Última actualización

  const TarjetaLog({
    super.key,
    required this.nivel,
    required this.componente,
    required this.mensaje,
    required this.timestamp,
  });

  Color get _colorNivel => switch (nivel) {
    'A TIEMPO'    => Colors.green,
    'EMBARCANDO'  => Colors.blue,
    'DEMORADO'    => Colors.orange,
    'CANCELADO'   => Colors.red,
    _             => Colors.grey,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color:        _colorNivel.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
        border:       Border(left: BorderSide(color: _colorNivel, width: 6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize:       MainAxisSize.max,
        children: [
          // Fila superior: nivel + componente + hora
          Row(
            children: [
              Container(
                padding:    const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: _colorNivel, borderRadius: BorderRadius.circular(4)),
                child: Text(nivel,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
              ),
              
              const SizedBox(width: 8),
              Text(componente,
                  style: TextStyle(
                      fontSize: 12, color: Colors.grey.shade700, fontWeight: FontWeight.w600)),
              const Spacer(),
              Text(
                '${timestamp.hour.toString().padLeft(2, '0')}:'
                '${timestamp.minute.toString().padLeft(2, '0')}:'
                '${timestamp.second.toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
              ),
            ],
          ),

          
          const SizedBox(height: 6),
          Text(mensaje, style: TextStyle(fontSize: 13, color: Colors.grey.shade800)),
        ],
      ),
    );
  }
}