import 'package:flutter/material.dart';

class FilaBus extends StatelessWidget {
  final dynamic bus;
  final VoidCallback onFavorito;
  final VoidCallback onEliminar;

  const FilaBus({
    super.key,
    required this.bus,
    required this.onFavorito,
    required this.onEliminar,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final bool tieneWifi = _tieneWifi(bus);
    final bool esFavorito = bus.favorito ?? false;

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: tieneWifi
            ? cs.primaryContainer
            : cs.surfaceContainerHighest,
        child: Icon(
          Icons.flight,
          color: tieneWifi ? cs.onPrimaryContainer : cs.onSurfaceVariant,
        ),
      ),
      title: Text(
        bus.nombre,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        'Piloto: ${bus.conductor} | Ruta: ${bus.ruta} | Cap: ${bus.capacidad}',
        style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              esFavorito ? Icons.star : Icons.star_border,
              color: esFavorito ? Colors.amber : cs.outline,
            ),
            onPressed:     onFavorito,
            visualDensity: VisualDensity.compact,
            tooltip:       esFavorito ? 'Quitar favorito' : 'Agregar a favoritos',
          ),
          IconButton(
            icon:          Icon(Icons.delete_outline, color: cs.error),
            onPressed:     onEliminar,
            visualDensity: VisualDensity.compact,
            tooltip:       'Eliminar',
          ),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }

  bool _tieneWifi(dynamic objeto) {
    try {
      return objeto.clima ?? false;
    } catch (_) {
      return false;
    }
  }
}
