class PilotoDto {
  final int id;
  final String name;
  final String email;

  const PilotoDto({
    required this.id,
    required this.name,
    required this.email,
  });

  factory PilotoDto.fromJson(Map<String, dynamic> json) => PilotoDto(
    id:    json['id']    as int,
    name:  json['name']  as String,
    email: json['email'] as String,
  );
}
