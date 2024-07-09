// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      stock: (json['stock'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      discountedPrice: (json['discountedPrice'] as num).toInt(),
      imageUrl: json['imageUrl'] as String? ?? null,
      available: json['available'] as bool,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'stock': instance.stock,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'imageUrl': instance.imageUrl,
      'available': instance.available,
    };
