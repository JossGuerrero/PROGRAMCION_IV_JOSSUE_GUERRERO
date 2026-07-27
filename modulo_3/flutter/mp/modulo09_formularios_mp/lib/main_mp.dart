// lib/main_mp.dart
import 'package:flutter/material.dart';
import 'package:modulo09_formularios_mp/models/servidor_ssh_mp.dart';
import 'package:modulo09_formularios_mp/screens/pantalla_busqueda_mp.dart';
import 'package:modulo09_formularios_mp/screens/pantalla_servidores_mp.dart';
import 'package:modulo09_formularios_mp/widgets/fila_servidor_mp.dart';
import 'package:modulo09_formularios_mp/widgets/formulario_servidor_mp.dart';

const int paso = 5;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B5E20)),
      useMaterial3: true,
    ),
    home: switch (paso) {
      1 => const _Paso1(),
      2 => const _Paso2(),
      3 => const _Paso3(),
      4 => const PantallaBuses(),
      5 => const PantallaBusqueda(),
      _ => Scaffold(
        body: Center(child: Text('Paso $paso: crea el widget primero')),
      ),
    },
  ),
);

// ─── Paso 1 ────────────────────────────────────────
class _Paso1 extends StatefulWidget {
  const _Paso1();
  @override
  State<_Paso1> createState() => _Paso1State();
}

class _Paso1State extends State<_Paso1> {
  final _ctrlHostname = TextEditingController();
  final _ctrlIp = TextEditingController();
  final _ctrlPuerto = TextEditingController(text: '40');
  final _focusIp = FocusNode();
  final _focusPuerto = FocusNode();

  @override
  void dispose() {
    _ctrlHostname.dispose();
    _ctrlIp.dispose();
    _ctrlPuerto.dispose();
    _focusIp.dispose();
    _focusPuerto.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Vuelo'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _ctrlHostname,
              decoration: const InputDecoration(
                labelText: 'Número de vuelo',
                hintText: 'AV204',
                prefixIcon: Icon(Icons.flight),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => _focusIp.requestFocus(),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _ctrlIp,
              focusNode: _focusIp,
              decoration: const InputDecoration(
                labelText: 'Ruta (código IATA)',
                hintText: 'UIO-GYE',
                prefixIcon: Icon(Icons.map),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => _focusPuerto.requestFocus(),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _ctrlPuerto,
              focusNode: _focusPuerto,
              decoration: const InputDecoration(
                labelText: 'Capacidad (Pasajeros)',
                prefixIcon: Icon(Icons.people),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => FocusScope.of(context).unfocus(),
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: () {
                FocusScope.of(context).unfocus();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Registrando vuelo ${_ctrlHostname.text} '
                      '(${_ctrlIp.text} · Capacidad ${_ctrlPuerto.text})',
                    ),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: const Icon(Icons.support_agent),
              label: const Text('Contactar aerolínea'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                _ctrlHostname.clear();
                _ctrlIp.clear();
                _ctrlPuerto.text = '40';
              },
              child: const Text('Limpiar campos'),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Paso 2 ────────────────────────────────────────
class _Paso2 extends StatelessWidget {
  const _Paso2();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo vuelo'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: FormularioBus(
          onGuardar: (datos) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Guardado: ${datos['nombre']} — ${datos['ip']}:${datos['puerto']}',
                ),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
        ),
      ),
    );
  }
}

// ─── Paso 3 ────────────────────────────────────────
class _Paso3 extends StatefulWidget {
  const _Paso3();
  @override
  State<_Paso3> createState() => _Paso3State();
}

class _Paso3State extends State<_Paso3> {
  // Nota: Si tus clases heredan de un modelo base común (ej. 'Bus'),
  // cambia el tipo de la lista de 'dynamic' al nombre de la clase padre.
  final List<dynamic> _buses = [
    BusSSH(
      id: '1',
      nombre: 'AV204',
      ruta: 'UIO ➔ GYE',
      capacidad: 180,
      conductor: 'Juan Pérez',
      modelo: 'Airbus A320',
      clima: true,
      favorito: true,
    ),
    BusSSH(
      id: '2',
      nombre: 'LA1456',
      ruta: 'UIO ➔ MIA',
      capacidad: 160,
      conductor: 'Carlos Ruiz',
      modelo: 'Boeing 737',
      clima: true,
    ),
    BusSSH(
      id: '3',
      nombre: 'EQ350',
      ruta: 'GYE ➔ MAD',
      capacidad: 250,
      conductor: 'Luis Gómez',
      modelo: 'Airbus A330',
      clima: false,
    ),
    BusSSH(
      id: '4',
      nombre: 'AV999',
      ruta: 'UIO ➔ BOG',
      capacidad: 180,
      conductor: 'Ana Torres',
      modelo: 'Boeing 737',
      clima: false,
    ),

    ServiciosWeb(
      id1: '5',
      nombre: 'Vuelo Nocturno',
      ruta: 'UIO ➔ JFK',
      capacidad: 220,
      conductor: 'Danna González',
      favorito: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Vuelos (${_buses.length})'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: _buses.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.flight_outlined,
                    size: 56,
                    color: cs.onSurfaceVariant,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Sin vuelos registrados',
                    style: TextStyle(color: cs.onSurfaceVariant),
                  ),
                ],
              ),
            )
          : ListView.separated(
              itemCount: _buses.length,
              separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
              itemBuilder: (ctx, i) {
                final item = _buses[i];
                return FilaBus(
                  bus: item,
                  onFavorito: () {
                    setState(() {
                      // Modifica de manera segura basándose en la propiedad real del objeto
                      item.favorito = !item.favorito;
                    });
                  },
                  onEliminar: () {
                    setState(() {
                      _buses.removeAt(i);
                    });
                  },
                );
              },
            ),
    );
  }
}
