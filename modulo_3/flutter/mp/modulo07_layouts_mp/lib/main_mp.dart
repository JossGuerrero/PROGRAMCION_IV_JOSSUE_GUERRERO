// lib/main_mp.dart
import 'package:flutter/material.dart';
import 'package:modulo07_layouts_mp/widgets/avatar_badge_mp.dart';
import 'package:modulo07_layouts_mp/widgets/customized_sized_box_mp.dart';
import 'package:modulo07_layouts_mp/widgets/fila_estado_mp.dart';
import 'package:modulo07_layouts_mp/widgets/tarjeta_log_mp.dart';

// ┌──────────────────────────────────────────────────────────────────┐
// │  Cambia este número y guarda (Ctrl+S) para navegar entre pasos. │
// │  Tema: Gestión de Vuelos ✈                                      │
// │  1  Paso 1  Container — Tarjeta de Embarque                     │
// │  2  Paso 2  Column — Estado de Vuelo (TarjetaLog, UIO ➔ GYE)     │
// │  3  Paso 3  Row + Expanded + Spacer — Lista de Pasajeros         │
// │  4  Paso 4  Stack + Positioned — Puertas de Abordaje             │
// │  5  Paso 5  SizedBox, Padding, Align, Wrap — Asientos            │
// └──────────────────────────────────────────────────────────────────┘
const int paso = 5;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: switch (paso) {
      1 => _paso1(),
      2 => Scaffold(
        body: ListView(
          children: [
            TarjetaLog(
              nivel: 'CANCELADO',
              componente: 'AV999',
              mensaje: 'Vuelo UIO ➔ MIA cancelado por condiciones climáticas',
              timestamp: DateTime.now(),
            ),
            TarjetaLog(
              nivel: 'DEMORADO',
              componente: 'LA1456',
              mensaje: 'Vuelo UIO ➔ GYE: nueva hora estimada de salida 15:40',
              timestamp: DateTime.now().subtract(const Duration(minutes: 2)),
            ),
            TarjetaLog(
              nivel: 'EMBARCANDO',
              componente: 'EQ350',
              mensaje: 'Vuelo UIO ➔ GYE embarcando por puerta B12',
              timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
            ),
            TarjetaLog(
              nivel: 'A TIEMPO',
              componente: 'AV204',
              mensaje: 'Vuelo UIO ➔ GYE saldrá según lo previsto',
              timestamp: DateTime.now().subtract(const Duration(minutes: 8)),
            ),
          ],
        ),
      ),
      3 => const Scaffold(
        body: Column(
          children: [
            FilaEstado(
              nombre: 'García, Juan',
              detalle: '12A · Clase Turista',
              activo: true,
              message: false,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'Pérez, Ana',
              detalle: '3F · Clase Ejecutiva',
              activo: true,
              message: false,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'Ramírez, Luis',
              detalle: 'Standby · sin asiento',
              activo: false,
              message: false,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'Martínez, Carlos Eduardo - Asistencia especial',
              detalle: '22C · Movilidad reducida',
              activo: true,
              message: false,
            ),
          ],
        ),
      ),
      4 => const Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AvatarBadge(nombre: 'B12', alertas: 2, activo: true),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'C04', alertas: 0, activo: true),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'A07', alertas: 0, activo: false),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'D21', alertas: 11, activo: true),
            ],
          ),
        ),
      ),
      5 => Scaffold(
        body: Center(
          child: CustomizedSizedBox(
            mainAxisAlignment: MainAxisAlignment.center,
            height: null,
            width: null,
            children: [
              AvatarBadge(nombre: 'B12', alertas: 2, activo: true),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'C04', alertas: 0, activo: true),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'A07', alertas: 0, activo: false),
              SizedBox(width: 24),
              AvatarBadge(nombre: 'D21', alertas: 11, activo: true),
            ],
          ),
        ),
      ),
      _ => Scaffold(
        body: Center(
          child: Text(
            'Paso $paso: crea la pantalla de gestión de vuelos primero',
          ),
        ),
      ),
    },
  ),
);

// ─── Paso 1 — Container: Tarjeta de Embarque (vive aquí en main_mp.dart) ─
Widget _paso1() => Scaffold(
  body: Center(
    child: Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(0),
        border: Border(left: BorderSide(color: Colors.indigo, width: 4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Text(
        '✈ Vuelo AV204 · UIO ➔ GYE · Puerta B12',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  ),
);
