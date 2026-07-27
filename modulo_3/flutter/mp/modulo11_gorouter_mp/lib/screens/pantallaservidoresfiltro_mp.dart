// lib/screens/pantallaservidoresfiltro_mp.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/servidor_ssh_mp.dart';

class PantallaBusesFiltro extends StatelessWidget {
  final bool soloWifi;
  const PantallaBusesFiltro({super.key, this.soloWifi = false});

  @override
  Widget build(BuildContext context) {
    final filtrados = soloWifi
        ? busesSimulados.where((s) => s.clima).toList()
        : busesSimulados;

    return Scaffold(
      appBar: AppBar(
        title:   Text('Vuelos${soloWifi ? ' (Con Wifi)' : ''}'),
        actions: [
          // Toggle filtro Wifi — cambia la URL con query param
          IconButton(
            icon:    Icon(soloWifi ? Icons.wifi : Icons.wifi_off),
            tooltip: soloWifi ? 'Ver todas las rutas' : 'Solo con wifi',
            onPressed: () => soloWifi
                ? context.go('/buses')
                : context.go('/buses?soloWifi=true'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount:   filtrados.length,
        itemBuilder: (context, i) {
          final s = filtrados[i];
          return ListTile(
            leading: Icon(Icons.flight, color: s.clima ? Colors.green : Colors.grey),
            title:   Text(s.nombre),
            subtitle: Text(s.ruta),
            onTap: () => context.push(
              '/buses/${s.id}',
              extra: s,   // pasa el objeto completo
            ),
          );
        },
      ),
    );
  }
}
