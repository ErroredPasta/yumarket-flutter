// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_option_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderOptionGroup _$OrderOptionGroupFromJson(Map<String, dynamic> json) =>
    OrderOptionGroup(
      id: (json['id'] as num).toInt(),
      orderOptions: (json['orderOptionDtos'] as List<dynamic>)
          .map((e) => OrderOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderOptionGroupToJson(OrderOptionGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderOptionDtos': instance.orderOptions,
    };

OrderOption _$OrderOptionFromJson(Map<String, dynamic> json) => OrderOption(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      checked: json['checked'] as bool,
    );

Map<String, dynamic> _$OrderOptionToJson(OrderOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'checked': instance.checked,
    };
