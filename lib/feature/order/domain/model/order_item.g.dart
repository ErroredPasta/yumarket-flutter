// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      amount: (json['amount'] as num).toInt(),
      pricePerItem: (json['pricePerItem'] as num).toInt(),
      orderOptionGroups: (json['orderOptionGroupDtos'] as List<dynamic>)
          .map((e) => OrderOptionGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'amount': instance.amount,
      'pricePerItem': instance.pricePerItem,
      'orderOptionGroupDtos': instance.orderOptionGroups,
    };
