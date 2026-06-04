String prefixFlight(String v) => 'FL-$v';
String suffixGate(String g) => 'Gate: $g';

void main() {
  String Function(String) f;

  f = prefixFlight;
  print(f('123'));

  f = suffixGate;
  print(f('A12'));

  final transformadores = <String Function(String)>[prefixFlight, suffixGate];
  for (final fn in transformadores) print(fn('X'));
}