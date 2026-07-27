import 'producto_mp.dart';

class VueloDto {
  final int     id;
  final String  name;
  final num     price;
  final String? categoryName;

  const VueloDto({
    required this.id,
    required this.name,
    required this.price,
    this.categoryName,
  });

  factory VueloDto.fromJson(Map<String, dynamic> json) => VueloDto(
    id:           json['id']    as int,
    name:         json['title'] as String,
    price:        json['price'] as num,
    categoryName: (json['category'] as Map<String, dynamic>?)?['name'] as String?,
  );

  Vuelo toDomain() => Vuelo(
    id:        id,
    nombre:    name,
    precio:    price.toDouble(),
    activo:    categoryName != null,
    categoria: categoryName,
  );
}
