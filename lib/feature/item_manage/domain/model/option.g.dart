// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      additionalPrice: (json['additionalPrice'] as num).toInt(),
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'additionalPrice': instance.additionalPrice,
    };
