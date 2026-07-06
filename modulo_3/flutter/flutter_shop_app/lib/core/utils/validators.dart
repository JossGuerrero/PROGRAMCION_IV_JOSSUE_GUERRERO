String? validateUsername(String? value) {
  final trimmed = value?.trim() ?? '';
  if (trimmed.isEmpty) return 'El usuario es obligatorio';
  if (trimmed.length < 3) return 'Mínimo 3 caracteres';
  return null;
}

String? validateEmail(String? value) {
  final trimmed = value?.trim() ?? '';
  if (trimmed.isEmpty) return 'El correo es obligatorio';
  final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  if (!emailRegex.hasMatch(trimmed)) return 'Correo inválido';
  return null;
}

String? validatePassword(String? value) {
  final trimmed = value ?? '';
  if (trimmed.isEmpty) return 'La contraseña es obligatoria';
  if (trimmed.length < 6) return 'Mínimo 6 caracteres';
  return null;
}

String? validateRequired(String? value, {String label = 'Campo'}) {
  if (value == null || value.trim().isEmpty) return '$label es obligatorio';
  return null;
}
