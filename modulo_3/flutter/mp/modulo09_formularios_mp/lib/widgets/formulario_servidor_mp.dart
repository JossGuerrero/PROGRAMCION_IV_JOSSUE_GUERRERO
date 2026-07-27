// lib/widgets/formulario_servidor_mp.dart
import 'package:flutter/material.dart';

class FormularioBus extends StatefulWidget {
  final void Function(Map<String, String> datos) onGuardar;
  const FormularioBus({super.key, required this.onGuardar});

  @override
  State<FormularioBus> createState() => _FormularioBusState();
}

class _FormularioBusState extends State<FormularioBus> {
  final _formKey = GlobalKey<FormState>();

  // Controladores
  final _ctrlNombre  = TextEditingController();
  final _ctrlIp      = TextEditingController();
  final _ctrlPuerto  = TextEditingController(text: '180');
  final _ctrlConductor = TextEditingController(text: 'Admin');
  final _ctrlMac     = TextEditingController();

  // FocusNodes para navegación de teclado
  final _focusIp      = FocusNode();
  final _focusPuerto  = FocusNode();
  final _focusConductor = FocusNode();
  final _focusMac     = FocusNode();

  // Variables de Estado
  String _so        = 'Airbus A320';
  String _servicio  = 'Directo';
  bool   _ssl       = true;

  // Expresión regular para validar ruta IATA y código de reserva
  static final _regexRuta     = RegExp(r'^[A-Z]{3}-[A-Z]{3}$');
  static final _regexReserva = RegExp(r'^[A-Z0-9]{6}$');

  @override
  void dispose() {
    _ctrlNombre.dispose();
    _ctrlIp.dispose();
    _ctrlPuerto.dispose();
    _ctrlConductor.dispose();
    _ctrlMac.dispose();
    _focusIp.dispose();
    _focusPuerto.dispose();
    _focusConductor.dispose();
    _focusMac.dispose();
    super.dispose();
  }

  void _guardar() {
    if (!_formKey.currentState!.validate()) return;

    widget.onGuardar({
      'nombre':   _ctrlNombre.text.trim(),
      'ip':       _ctrlIp.text.trim(),
      'puerto':   _ctrlPuerto.text.trim(),
      'usuario':  _ctrlConductor.text.trim(),
      'mac':      _ctrlMac.text.trim(),
      'so':       _so,
      'servicio': _servicio,
      'ssl':      _ssl.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView( // Cambiado a ListView para evitar desbordamiento (Overflow) al abrir teclado
        padding: const EdgeInsets.all(16.0),
        children: [

          // ── Número de vuelo ───────────────────────────────────
          TextFormField(
            controller: _ctrlNombre,
            decoration: const InputDecoration(
              labelText:  'Número de vuelo',
              hintText:   'AV204',
              prefixIcon: Icon(Icons.flight),
              border:     OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusIp.requestFocus(),
            validator: (v) {
              if (v == null || v.trim().isEmpty) return 'El número de vuelo es obligatorio';
              if (v.length < 3)                  return 'Mínimo 3 caracteres';
              if (!RegExp(r'^[a-zA-Z0-9\-\_]+$').hasMatch(v)) {
                return 'Solo letras, números, guiones y guiones bajos';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),

          // ── Ruta (código IATA) ──────────────────────────────────────
          TextFormField(
            controller:   _ctrlIp,
            focusNode:    _focusIp,
            decoration: const InputDecoration(
              labelText:  'Ruta (código IATA)',
              hintText:   'UIO-GYE',
              prefixIcon: Icon(Icons.map),
              border:     OutlineInputBorder(),
            ),
            textCapitalization: TextCapitalization.characters,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusPuerto.requestFocus(),
            validator: (v) {
              if (v == null || v.isEmpty) return 'La ruta es obligatoria';
              if (!_regexRuta.hasMatch(v)) return 'Formato: UIO-GYE (código IATA de 3 letras)';
              return null;
            },
          ),
          const SizedBox(height: 12),

          // ── Capacidad ────────────────────────────────────────────
          TextFormField(
            controller:   _ctrlPuerto,
            focusNode:    _focusPuerto,
            decoration: const InputDecoration(
              labelText:  'Capacidad (Pasajeros)',
              prefixIcon: Icon(Icons.people),
              border:     OutlineInputBorder(),
            ),
            keyboardType:    TextInputType.number,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusConductor.requestFocus(),
            validator: (v) {
              final capacidad = int.tryParse(v ?? '');
              if (capacidad == null)               return 'La capacidad debe ser un número';
              if (capacidad < 1 || capacidad > 65535) return 'Capacidad inválida';
              return null;
            },
          ),
          const SizedBox(height: 12),

          // ── Piloto ───────────────────────────────────────────────
          TextFormField(
            controller:      _ctrlConductor,
            focusNode:       _focusConductor,
            decoration: const InputDecoration(
              labelText:  'Piloto',
              prefixIcon: Icon(Icons.person_outline),
              border:     OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusMac.requestFocus(),
            validator: (v) =>
                v == null || v.trim().isEmpty ? 'El piloto es obligatorio' : null,
          ),
          const SizedBox(height: 12),

          // ── Código de reserva (PNR) ──────────────────────────────────────
          TextFormField(
            controller: _ctrlMac,
            focusNode:  _focusMac,
            decoration: const InputDecoration(
              labelText:  'Código de reserva (PNR)',
              hintText:   'K7HXQP',
              prefixIcon: Icon(Icons.confirmation_number),
              border:     OutlineInputBorder(),
            ),
            textCapitalization: TextCapitalization.characters,
            textInputAction: TextInputAction.next,
            validator: (v) {
              if (v == null || v.trim().isEmpty) return 'El código de reserva es obligatorio';
              if (!_regexReserva.hasMatch(v)) return 'Formato: 6 caracteres alfanuméricos (ej. K7HXQP)';
              return null;
            },
          ),
          const SizedBox(height: 12),

          // ── Aeronave ──────────────────────────────────────
          DropdownButtonFormField<String>(
            value:      _so,
            decoration: const InputDecoration(
              labelText:  'Aeronave',
              prefixIcon: Icon(Icons.airplanemode_active),
              border:     OutlineInputBorder(),
            ),
            items: [
              'Airbus A320', 'Boeing 737', 'Airbus A330',
              'Embraer 190', 'Boeing 787',
            ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
            onChanged: (v) => setState(() => _so = v!),
          ),
          const SizedBox(height: 12),

          // ── Tipo de vuelo ──────────────────────────────────────────────
          DropdownButtonFormField<String>(
            value:      _servicio,
            decoration: const InputDecoration(
              labelText:  'Tipo de Vuelo',
              prefixIcon: Icon(Icons.alt_route),
              border:     OutlineInputBorder(),
            ),
            items: [
              'Directo', 'Con escalas', 'Nocturno',
            ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
            onChanged: (v) => setState(() => _servicio = v!),
          ),
          const SizedBox(height: 8),

          // ── Wifi a bordo — SwitchListTile ──────────────────────────────────
          SwitchListTile(
            title:     const Text('Wifi a bordo'),
            subtitle:  const Text('Disponible durante el vuelo'),
            value:     _ssl,
            onChanged: (v) => setState(() => _ssl = v),
            secondary: const Icon(Icons.wifi),
          ),
          const SizedBox(height: 16),

          // ── Botones ───────────────────────────────────────────────
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    _formKey.currentState?.reset();
                    _ctrlNombre.clear();
                    _ctrlIp.clear();
                    _ctrlMac.clear();
                    _ctrlPuerto.text = '180';
                    _ctrlConductor.text = 'Admin';
                  },
                  child: const Text('Limpiar'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: FilledButton.icon(
                  onPressed: _guardar,
                  icon:  const Icon(Icons.save),
                  label: const Text('Guardar vuelo'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
