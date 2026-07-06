import 'package:intl/intl.dart';

String formatPrice(double value, {String currency = '\$'}) =>
    '$currency${value.toStringAsFixed(2)}';

String formatPriceStr(String value, {String currency = '\$'}) {
  final number = double.tryParse(value) ?? 0.0;
  return formatPrice(number, currency: currency);
}

String formatDate(String iso) {
  try {
    final dt = DateTime.parse(iso).toLocal();
    return DateFormat('dd MMM yyyy', 'es').format(dt);
  } catch (_) {
    return iso.substring(0, 10);
  }
}

String formatDateTime(String iso) {
  try {
    final dt = DateTime.parse(iso).toLocal();
    return DateFormat('dd MMM yyyy · HH:mm', 'es').format(dt);
  } catch (_) {
    return iso.substring(0, 16);
  }
}

String truncate(String text, int max) {
  if (text.length <= max) return text;
  return '${text.substring(0, max)}...';
}
